"""
Backfill ISBNs for new Indian platform records using Indian/South-Asian Koha OPACs.

Targets platforms with no author field and 0% ISBN coverage:
  kitabwalah, bookhub, bookflow, clankart

Servers queried in order:
  1. opac.duls.du.ac.in        — Delhi University Library System (large general)
  2. libraryopac.ignou.ac.in   — IGNOU open university (very large)
  3. opac.tiss.ac.in           — TISS social sciences
  4. fosma-opac.l2c2.co.in     — FOSMA maritime/engineering
  5. krmuopac.icloudems.com    — KR Mangalam University
  6. koha.duhs.edu.pk          — Dow Univ. Health Sciences (Pakistan)

Run AFTER openlibrary_backfill.py.

Notes:
  - None of these platforms expose an author field; title-only search is used.
  - Kitabwalah titles use pipe-delimited format: "Publisher | Title | Author | Edition".
    The script extracts a clean search term from this format.
  - DU OPAC requires plain HTTP (HTTPS times out).

Run:
  python3 indian_koha_backfill2.py [--dry-run] [--limit N]
"""

import argparse
import html
import json
import re
import sys
import time
from pathlib import Path
from urllib.parse import unquote

import httpx
import zstandard

sys.stdout.reconfigure(line_buffering=True)

DATA_DIR = Path("data")

TARGET_FILES = [
    "kitabwalah_listings.jsonl",
    "bookhub_listings.jsonl",
    "bookflow_listings.jsonl",
    "clankart_listings.jsonl",
]

KOHA_SERVERS = [
    "https://libraryopac.ignou.ac.in",
    "https://opac.tiss.ac.in",
    "https://fosma-opac.l2c2.co.in",
    "https://krmuopac.icloudems.com",
    "https://koha.duhs.edu.pk",
    "http://opac.duls.du.ac.in",        # last: http-only, intermittently unreliable
]

HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0 (contact: rbm-project)",
    "Connection": "close",
}

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
ISBN10_RE = re.compile(r"\b[0-9]{9}[0-9X]\b")
YEAR_RE   = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")
INDIAN_SCRIPT_RE = re.compile(r"[ऀ-ॿ઀-૿଀-୿ఀ-౿ಀ-೿ഀ-ൿ฀-๿؀-ۿ]")

# Kitabwalah pipe-segment content to discard
_EDITION_WORDS = re.compile(
    r"^\s*(?:latest|new|revised|updated|edition|for\s+\d{4}|exams?|"
    r"paperback|hardcover|2026|2027|latest\s+edition)\s*$",
    re.IGNORECASE,
)


def read_jsonl(path: Path) -> list[dict]:
    zst = path.with_suffix(path.suffix + ".zst")
    if not path.exists() and zst.exists():
        path = zst
    if path.suffix == ".zst":
        dctx = zstandard.ZstdDecompressor()
        raw = dctx.decompress(path.read_bytes(), max_output_size=2 << 30)
        lines = raw.decode("utf-8").splitlines()
    else:
        lines = path.read_text(encoding="utf-8").splitlines()
    return [json.loads(l) for l in lines if l.strip()]


# ── text helpers ──────────────────────────────────────────────────────────────

def char_bigrams(text: str) -> set[str]:
    t = re.sub(r"\s+", "", text.lower())
    return {t[i:i+2] for i in range(len(t) - 1)}


def title_similarity(a: str, b: str) -> float:
    ba, bb = char_bigrams(a), char_bigrams(b)
    if not ba or not bb:
        return 0.0
    return len(ba & bb) / len(ba | bb)


def clean_search_title(raw: str) -> str:
    """Return a clean, searchable title string.

    Handles:
    - HTML entity encoding (&#038; &amp; &#8211; etc.)
    - Kitabwalah pipe-delimited format: picks the best segment
    - En-dash separated "Title – Author" format
    """
    t = html.unescape(raw)

    if "|" in t:
        parts = [p.strip() for p in t.split("|") if p.strip()]
        # Drop pure edition/year noise and lone author-name segments
        useful = [p for p in parts if not _EDITION_WORDS.fullmatch(p) and len(p) > 4]
        if not useful:
            useful = parts
        # Remove segments that are clearly author attributions:
        #   "By V.K. Jaiswal", "B.M. Sharma", "G. Tewani"
        author_signal = re.compile(r"^by\s|^[A-Z]\.", re.I)
        non_author = [p for p in useful if not author_signal.match(p)]
        candidates = non_author if non_author else useful
        # Use first segment alone if it's already descriptive; otherwise join two
        t = candidates[0] if len(candidates[0]) >= 20 else " ".join(candidates[:2])

    # For "Title – Author" style (en-dash or em-dash), take just the first part
    t = re.split(r"\s[–—]\s", t)[0].strip()

    # Strip trailing year/edition noise
    t = re.sub(r"\s*[\(\[](for\s+)?\d{4}[\)\]].*$", "", t, flags=re.IGNORECASE).strip()

    return t


# ── ISBN helpers ──────────────────────────────────────────────────────────────

def isbn10_to_isbn13(isbn10: str) -> str | None:
    digits = re.sub(r"[^0-9X]", "", isbn10.upper())
    if len(digits) != 10:
        return None
    prefix = "978" + digits[:9]
    total = sum(int(c) * (1 if i % 2 == 0 else 3) for i, c in enumerate(prefix))
    check = (10 - (total % 10)) % 10
    candidate = prefix + str(check)
    return candidate if ISBN13_RE.fullmatch(candidate) else None


def parse_isbn(raw: str) -> str | None:
    clean = re.sub(r"[^0-9X]", "", raw.upper())
    if len(clean) == 13 and ISBN13_RE.fullmatch(clean):
        return clean
    if len(clean) == 10:
        return isbn10_to_isbn13(clean)
    return None


def listing_year(rec: dict) -> int | None:
    for field in ("publication_year", "year", "edition"):
        val = rec.get(field)
        if val:
            m = YEAR_RE.search(str(val))
            if m:
                return int(m.group(1))
    return None


# ── Koha OPAC search ──────────────────────────────────────────────────────────

def _get(client: httpx.Client, url: str, params: dict) -> httpx.Response | None:
    """GET with one retry on server-disconnect (keepalive reuse failure)."""
    for attempt in range(2):
        try:
            resp = client.get(url, params=params, timeout=15)
            resp.raise_for_status()
            return resp
        except httpx.RemoteProtocolError:
            if attempt == 0:
                time.sleep(1)
                continue
            return None
        except Exception as e:
            print(f"  request error {url}: {e}")
            return None
    return None


def koha_search(client: httpx.Client, base: str, title: str) -> list[int]:
    """Return list of biblionumbers matching title (title-only search).

    Tries phrase search first; falls back to keyword search if no results.
    """
    def _bibs(q: str) -> list[int]:
        resp = _get(client, f"{base}/cgi-bin/koha/opac-search.pl",
                    {"q": q, "count": "10"})
        if resp is None:
            return []
        return list(dict.fromkeys(int(m) for m in re.findall(r"biblionumber=(\d+)", resp.text)))

    bibs = _bibs(f'ti:"{title}"')
    if not bibs:
        # Keyword fallback — less precise but higher recall
        bibs = _bibs(f"ti:{title}")
    return bibs


def koha_detail(client: httpx.Client, base: str, bib: int) -> tuple[str | None, str]:
    """Return (isbn, catalog_title) from a detail page."""
    resp = _get(client, f"{base}/cgi-bin/koha/opac-detail.pl",
                {"biblionumber": str(bib)})
    if resp is None:
        return None, ""

    # Extract ISBN
    isbn = None
    for m in re.finditer(r'property="isbn">([^<]+)', resp.text):
        isbn = parse_isbn(m.group(1).strip())
        if isbn:
            break
    if not isbn:
        for m in re.finditer(r"rft\.isbn=([^&%\s]+)", resp.text):
            isbn = parse_isbn(unquote(m.group(1)))
            if isbn:
                break

    # Extract catalog title from "Details for: TITLE / &rsaquo;" pattern
    # <title\n    > or <title> both handled via [^>]*>
    cat_title = ""
    m = re.search(r"Details for[:\s]+(.+?)(?:\s*/\s*[\n&<]|\s*&rsaquo;|\s*›)", resp.text, re.DOTALL)
    if m:
        cat_title = re.sub(r"\s+", " ", m.group(1)).strip()
    else:
        # Fallback: first part of <title> tag
        m = re.search(r"<title[^>]*>([^<|]+)", resp.text)
        if m:
            cat_title = re.sub(r"\s+", " ", m.group(1)).strip()

    return isbn, cat_title


def search_servers(client: httpx.Client, search_title: str,
                   lst_year: int | None, min_sim: float) -> str | None:
    for base in KOHA_SERVERS:
        bibs = koha_search(client, base, search_title)
        for bib in bibs[:5]:
            isbn, cat_title = koha_detail(client, base, bib)
            if not isbn:
                continue
            sim = title_similarity(search_title, cat_title)
            if sim < min_sim:
                continue
            if lst_year and cat_title:
                m = YEAR_RE.search(cat_title)
                if m and abs(lst_year - int(m.group(1))) > 3:
                    continue
            return isbn
    return None


# ── eligibility ───────────────────────────────────────────────────────────────

def is_eligible(rec: dict) -> bool:
    if rec.get("isbn"):
        return False
    title = rec.get("title") or ""
    if not title:
        return False
    if INDIAN_SCRIPT_RE.search(title):
        return False
    return True


# ── main ──────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs for new Indian platform records via Koha OPACs"
    )
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--min-similarity", type=float, default=0.45)
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--checkpoint-every", type=int, default=100)
    args = parser.parse_args()

    file_records: dict[str, list[dict]] = {}
    all_eligible: list[tuple[str, dict]] = []

    for fname in TARGET_FILES:
        fpath = DATA_DIR / fname
        zst = fpath.with_suffix(fpath.suffix + ".zst")
        if not fpath.exists() and not zst.exists():
            continue
        records = read_jsonl(fpath)
        file_records[str(fpath)] = records
        eligible = [r for r in records if is_eligible(r)]
        if eligible:
            all_eligible.extend((str(fpath), r) for r in eligible)
            print(f"{fname}: {len(records)} total, {len(eligible)} eligible")

    print(f"\nTotal eligible: {len(all_eligible)}")

    # Pre-pass: extract ISBNs directly from title strings (kitabwalah embeds them)
    title_extracted = 0
    for fpath, rec in all_eligible:
        raw = rec.get("title") or ""
        for m in ISBN13_RE.finditer(html.unescape(raw)):
            isbn = parse_isbn(m.group(0))
            if isbn:
                rec["isbn"] = isbn
                title_extracted += 1
                break
    if title_extracted:
        print(f"Extracted {title_extracted} ISBNs from title strings")
        all_eligible = [(fp, r) for fp, r in all_eligible if not r.get("isbn")]
        print(f"Remaining for OPAC search: {len(all_eligible)}")

    if args.limit:
        all_eligible = all_eligible[: args.limit]
        print(f"Processing first {args.limit}")

    found = no_match = 0

    with httpx.Client(headers=HEADERS, follow_redirects=True, verify=False) as client:
        for i, (fpath, rec) in enumerate(all_eligible, 1):
            raw_title = rec.get("title") or ""
            search_title = clean_search_title(raw_title)
            yr = listing_year(rec)

            if (i - 1) % 50 == 0:
                print(f"[{i}/{len(all_eligible)}] found={found} no_match={no_match}")

            isbn = search_servers(client, search_title, yr, args.min_similarity)
            time.sleep(args.delay)

            if isbn:
                rec["isbn"] = isbn
                found += 1
            else:
                no_match += 1

            if not args.dry_run and args.checkpoint_every and i % args.checkpoint_every == 0:
                ckpt_files = {fp for fp, r in all_eligible[:i] if r.get("isbn")}
                for fp in ckpt_files:
                    recs = file_records[fp]
                    tmp = Path(fp).with_suffix(".jsonl.tmp")
                    with tmp.open("w", encoding="utf-8") as fh:
                        for r in recs:
                            fh.write(json.dumps(r, ensure_ascii=False) + "\n")
                    tmp.replace(Path(fp))
                if ckpt_files:
                    print(f"  [checkpoint] {len(ckpt_files)} files at record {i}")

    total_found = found + title_extracted
    print(f"\nDone. title_extracted={title_extracted} opac_found={found} no_match={no_match}")

    if args.dry_run or total_found == 0:
        return

    updated = {fpath for fpath, rec in all_eligible if rec.get("isbn")}
    for fpath in updated:
        records = file_records[fpath]
        tmp = Path(fpath).with_suffix(".jsonl.tmp")
        with tmp.open("w", encoding="utf-8") as fh:
            for r in records:
                fh.write(json.dumps(r, ensure_ascii=False) + "\n")
        tmp.replace(Path(fpath))
        print(f"Written {len(records)} records → {fpath}")


if __name__ == "__main__":
    main()
