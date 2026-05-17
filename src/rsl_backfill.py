"""
Backfill ISBNs for Russian-language platform records using the
Russian State Library (Российская государственная библиотека, RSL) Aleph catalog.

RSL Aleph access:
  - F-interface (HTML record retrieval): http://aleph.rsl.ru/F/
  - X-services (search API): http://aleph.rsl.ru/X
  - Session obtained from F-interface; set_number from X-services op=find.
  - Search code WTI (word-in-title) used; records fetched via func=full-set-set.

Note: The newer search.rsl.ru AJAX endpoint does not support external query
filtering (always returns the full unfiltered catalog); the legacy Aleph
F+X interface is the only programmatic path.

Target platforms (Russia):
  alib_ru, moiknigi_com, booksharing_app russia, ofeni_ru, libex, rusbuk,
  livelib bookswap

Run:
  python3 rsl_backfill.py [--limit N] [--dry-run] [--delay SECS]
"""

import argparse
import json
import re
import sys
import time
from pathlib import Path

import httpx
from bs4 import BeautifulSoup

sys.stdout.reconfigure(line_buffering=True)

DATA_DIR = Path("data")

TARGET_FILES = [
    "alib_ru_listings.jsonl",
    "moiknigi_com_listings.jsonl",
    "booksharing_app russia_listings.jsonl",
    "ofeni_ru_listings.jsonl",
    "libex_listings.jsonl",
    "rusbuk_listings.jsonl",
    "livelib bookswap_listings.jsonl",
]

ALEPH_BASE = "http://aleph.rsl.ru"
ALEPH_DB = "RSL01"

HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0",
    "Accept": "text/html,application/xml",
}

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
YEAR_RE = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")


# ── Text helpers ──────────────────────────────────────────────────────────────

def char_bigrams(text: str) -> set[str]:
    t = re.sub(r"\s+", "", text.lower())
    return {t[i:i + 2] for i in range(len(t) - 1)}


def title_similarity(a: str, b: str) -> float:
    ba, bb = char_bigrams(a), char_bigrams(b)
    if not ba or not bb:
        return 0.0
    return len(ba & bb) / len(ba | bb)


def clean_title(title: str) -> str:
    """Strip RSL annotation suffixes and normalize whitespace."""
    t = title.replace("\xa0", " ")
    # Strip " : [annotation]" and " / author" suffixes
    t = re.sub(r"\s*[:;/]\s*[\[\(].*$", "", t)
    t = re.sub(r"\s*/\s*\S.*$", "", t)
    # Strip trailing punctuation
    t = re.sub(r"[\s.,;:]+$", "", t)
    return t.strip()


def listing_year(rec: dict) -> int | None:
    raw = rec.get("publication_year") or ""
    m = YEAR_RE.search(str(raw))
    if m:
        return int(m.group(1))
    # Seller comments sometimes embed a year at the start
    comments = rec.get("seller_comments") or ""
    m = re.match(r"^\s*(\d{4})\b", comments)
    if m:
        yr = int(m.group(1))
        if 1450 < yr <= 2030:
            return yr
    return None


def rsl_year(vykh: str) -> int | None:
    """Extract year from RSL Вых.данные field (publication data)."""
    vykh = vykh.replace("\xa0", " ")
    m = YEAR_RE.search(vykh)
    return int(m.group(1)) if m else None


# ── Session management ────────────────────────────────────────────────────────

def get_session(client: httpx.Client) -> str | None:
    """Obtain an RSL Aleph session ID from the F-interface login page."""
    try:
        resp = client.get(
            f"{ALEPH_BASE}/F/-?func=file&file_name=find-a",
            headers=HEADERS,
            timeout=20.0,
        )
        resp.raise_for_status()
    except Exception as exc:
        print(f"  Session fetch failed: {exc}")
        return None

    # Session is embedded in form action URL: F/SESSION_ID?...
    m = re.search(r'action="http://aleph\.rsl\.ru:80/F/([^?/"]+)', resp.text)
    if m:
        return m.group(1)
    return None


# ── Aleph search + record retrieval ──────────────────────────────────────────

def aleph_find(client: httpx.Client, title: str, max_hits: int = 5) -> tuple[str, int]:
    """
    Search RSL Aleph by word-in-title. Returns (set_number, hit_count).
    Uses X-services which does not require a session.
    """
    params = {
        "op": "find",
        "base": ALEPH_DB,
        "request": title,
        "code": "WTI",
    }
    try:
        resp = client.get(
            f"{ALEPH_BASE}/X",
            params=params,
            headers=HEADERS,
            timeout=15.0,
        )
    except Exception as exc:
        print(f"  Aleph find error: {exc}")
        return "", 0

    xml = resp.text
    m_set = re.search(r"<set_number>(\d+)</set_number>", xml)
    m_hits = re.search(r"<no_entries>(\d+)</no_entries>", xml)
    if not m_set:
        return "", 0
    hits = int(m_hits.group(1)) if m_hits else 0
    return m_set.group(1), min(hits, max_hits)


def aleph_record(
    client: httpx.Client,
    session: str,
    set_number: str,
    entry: int,
) -> dict | None:
    """
    Fetch one record from an Aleph search set via F-interface.
    Returns dict with keys: isbn, title, year, author.
    """
    url = (
        f"{ALEPH_BASE}/F/{session}"
        f"?func=full-set-set&set_number={set_number}"
        f"&set_entry={entry:06d}"
    )
    try:
        resp = client.get(url, headers=HEADERS, timeout=20.0)
    except Exception as exc:
        print(f"  Record fetch error (set={set_number} entry={entry}): {exc}")
        return None

    if resp.status_code != 200 or len(resp.content) < 500:
        return None

    soup = BeautifulSoup(resp.text, "html.parser")
    fields: dict[str, str] = {}
    for row in soup.find_all("tr"):
        cells = row.find_all("td")
        if len(cells) < 2:
            continue
        key = cells[0].get_text(strip=True)
        val = cells[1].get_text(" ", strip=True).replace("\xa0", " ")
        if key:
            fields[key] = val

    raw_isbn = fields.get("ISBN", "")
    isbn = _parse_isbn(raw_isbn)

    raw_title = fields.get("Заглавие", "")
    title = clean_title(raw_title) if raw_title else None

    raw_year = fields.get("Вых.данные", "")
    year = rsl_year(raw_year)

    author = fields.get("Автор", "").split(";")[0].strip() or None

    return {"isbn": isbn, "title": title, "year": year, "author": author}


def _parse_isbn(raw: str) -> str | None:
    digits = re.sub(r"[^0-9X]", "", raw.upper())
    if len(digits) == 13 and ISBN13_RE.match(digits):
        return digits
    if len(digits) > 13:
        # May include print-run: "978-5-9268-4943-8 :3000 экз."
        m = ISBN13_RE.search(digits)
        if m:
            return m.group(0)
    return None


# ── Core matching ─────────────────────────────────────────────────────────────

def find_isbn(
    client: httpx.Client,
    session_holder: list,
    title: str,
    year: int | None,
    min_similarity: float = 0.5,
    delay: float = 1.0,
) -> str | None:
    """
    Search RSL for title; return best-matching ISBN or None.
    session_holder is a 1-element list so it can be refreshed in place.
    """
    set_number, hit_count = aleph_find(client, title)
    if not set_number or hit_count == 0:
        return None

    session = session_holder[0]
    if not session:
        session = get_session(client)
        session_holder[0] = session
        if not session:
            return None

    for entry in range(1, hit_count + 1):
        time.sleep(delay)
        rec = aleph_record(client, session, set_number, entry)
        if rec is None:
            # Possibly session expired — refresh once
            session = get_session(client)
            session_holder[0] = session
            if not session:
                return None
            rec = aleph_record(client, session, set_number, entry)
            if rec is None:
                continue

        if not rec.get("isbn"):
            continue

        if not rec.get("title"):
            continue

        sim = title_similarity(title, rec["title"])
        if sim < min_similarity:
            continue

        rec_year = rec.get("year")
        if year and rec_year and abs(year - rec_year) > 5:
            continue

        return rec["isbn"]

    return None


# ── File I/O ──────────────────────────────────────────────────────────────────

def load_records(path: Path) -> list[dict]:
    records = []
    with open(path, encoding="utf-8") as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            try:
                records.append(json.loads(line))
            except json.JSONDecodeError:
                pass
    return records


def enriched_path(original: Path) -> Path:
    return original.with_name(original.stem.replace("_listings", "_enriched") + ".jsonl")


# ── Main ─────────────────────────────────────────────────────────────────────

def main():
    ap = argparse.ArgumentParser(description="RSL Aleph ISBN backfill for Russian platforms")
    ap.add_argument("--limit", type=int, default=0, help="Max records to attempt (0=all)")
    ap.add_argument("--dry-run", action="store_true", help="Lookup only, no file writes")
    ap.add_argument("--delay", type=float, default=1.5, help="Delay between Aleph record fetches")
    ap.add_argument("--similarity", type=float, default=0.5, help="Min title similarity threshold")
    args = ap.parse_args()

    client = httpx.Client(follow_redirects=True)
    session_holder = [get_session(client)]
    if not session_holder[0]:
        print("ERROR: Could not obtain RSL Aleph session. Check connectivity.")
        sys.exit(1)
    print(f"RSL session: {session_holder[0][:20]}...")

    total_attempted = 0
    total_found = 0

    for fname in TARGET_FILES:
        src = DATA_DIR / fname
        if not src.exists():
            continue

        records = load_records(src)
        candidates = [r for r in records if not r.get("isbn") and r.get("title")]
        if not candidates:
            print(f"{fname}: no candidates (all have ISBN or no title)")
            continue

        print(f"\n{fname}: {len(candidates)} candidates without ISBN")
        enriched: list[dict] = []

        for rec in candidates:
            if args.limit and total_attempted >= args.limit:
                break

            title = rec["title"]
            year = listing_year(rec)

            total_attempted += 1
            isbn = find_isbn(
                client,
                session_holder,
                title,
                year,
                min_similarity=args.similarity,
                delay=args.delay,
            )

            if isbn:
                total_found += 1
                print(f"  FOUND  {isbn}  ← {title[:60]!r}")
                if not args.dry_run:
                    enriched_rec = dict(rec)
                    enriched_rec["isbn"] = isbn
                    enriched.append(enriched_rec)
            else:
                print(f"  miss   {title[:60]!r}")

            time.sleep(args.delay * 0.3)  # brief pause between searches

        if enriched and not args.dry_run:
            out_path = enriched_path(src)
            with open(out_path, "a", encoding="utf-8") as fh:
                for r in enriched:
                    fh.write(json.dumps(r, ensure_ascii=False) + "\n")
            print(f"  Wrote {len(enriched)} enriched records to {out_path.name}")

    print(
        f"\nDone. Attempted: {total_attempted}, found: {total_found} "
        f"({100*total_found/max(total_attempted,1):.1f}%)"
    )


if __name__ == "__main__":
    main()
