"""
Backfill ISBNs for SE-European platform records using the
COBISS+ API (plus.cobiss.net).

COBISS covers: Bulgaria (BG), Serbia (RS), Bosnia (BH), Montenegro (CG),
North Macedonia (MK), Kosovo (KS), Albania (AL), Slovenia (SI).

Croatia (njuskalo, aukcije_hr) uses COBISS.HR which is a separate system
not available on plus.cobiss.net — handled by a separate script if needed.

API:
  Search:  GET /cobiss/api/{env}/{lang}/search/cobib?q={query}&cnt=50
  Detail:  GET /cobiss/api/{env}/{lang}/search/cobib/display/{id}
  Response: JSON — searchItems[].{id, primary, secondary, other}
            display addons[]: ["ISBN: ...", "COBISS-ID: ..."]

Title matching uses character bigram Jaccard (works for Cyrillic + Latin).
Year extracted from the 'other' field: "type | format  |  language  |  year".

Targets by country:
  bg/bg: knizhenpazar
  rs/sr: knjizara_com antikvarnica, kupindo books, limundo books
  si/sl: bolha slovenia books

Run:
  python3 cobiss_backfill.py [--limit N] [--dry-run] [--delay SECS]
"""

import argparse
import json
import re
import sys
import time
from pathlib import Path

import httpx

sys.stdout.reconfigure(line_buffering=True)

DATA_DIR = Path("data")

# (filename, env, lang)
TARGET_FILES = [
    ("knizhenpazar_listings.jsonl",                "bg", "bg"),
    ("knjizara_com antikvarnica_listings.jsonl",   "rs", "sr"),
    ("kupindo books_listings.jsonl",                "rs", "sr"),
    ("limundo books_listings.jsonl",                "rs", "sr"),
    ("bolha slovenia books_listings.jsonl",         "si", "sl"),
]

COBISS_API = "https://plus.cobiss.net/cobiss/api"

HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0",
    "Accept": "application/json",
}

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
YEAR_RE = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")


# ── text helpers ────────────────────────────────────────────────────────────

def char_bigrams(text: str) -> set[str]:
    t = re.sub(r"\s+", "", text)
    return {t[i:i+2] for i in range(len(t) - 1)}


def title_similarity(a: str, b: str) -> float:
    ba = char_bigrams(a)
    bb = char_bigrams(b)
    if not ba or not bb:
        return 0.0
    return len(ba & bb) / len(ba | bb)


# ── ISBN parsing ────────────────────────────────────────────────────────────

def parse_isbn13(raw: str) -> str | None:
    clean = re.sub(r"[^0-9]", "", raw)
    if len(clean) == 13 and ISBN13_RE.fullmatch(clean):
        return clean
    return None


def isbn_from_addons(addons: list[str]) -> str | None:
    """Extract first valid ISBN-13 from COBISS display addons."""
    for addon in addons:
        if not addon.startswith("ISBN"):
            continue
        # "ISBN: 3-551-55600-8 ; 978-3-551-55600-4"
        # Strip label, split by semicolon
        raw_part = addon.split(":", 1)[-1].strip()
        for segment in raw_part.split(";"):
            isbn = parse_isbn13(segment.strip())
            if isbn:
                return isbn
    return None


def cobiss_id_from_addons(addons: list[str]) -> str | None:
    """Extract COBISS record ID from display addons."""
    for addon in addons:
        # "COBISS-ID: 43489032" or "COBISS.BG-ID: ..." or similar
        if "COBISS" in addon and "ID" in addon:
            m = re.search(r":\s*(\d{6,})", addon)
            if m:
                return m.group(1)
    return None


def cobiss_url(env: str, cobiss_id: str) -> str:
    return f"https://plus.cobiss.net/cobiss/{env}/{env}/bib/COBIB/{cobiss_id}"


# ── year extraction ─────────────────────────────────────────────────────────

def year_from_other(other: str | None) -> int | None:
    """Parse year from COBISS 'other' field: 'type | format  |  lang  |  year'."""
    if not other:
        return None
    # Last pipe-separated segment often contains the year
    parts = re.split(r"\|", other)
    for part in reversed(parts):
        m = YEAR_RE.search(part)
        if m:
            return int(m.group(1))
    return None


def listing_year(rec: dict) -> int | None:
    y = rec.get("publication_year") or rec.get("year")
    if y:
        m = YEAR_RE.search(str(y))
        if m:
            return int(m.group(1))
    return None


# ── API calls ───────────────────────────────────────────────────────────────

def cobiss_search(
    client: httpx.Client, env: str, lang: str, query: str
) -> list[dict]:
    url = f"{COBISS_API}/{env}/{lang}/search/cobib"
    try:
        resp = client.get(url, params={"q": query, "cnt": "50"})
        resp.raise_for_status()
    except Exception as e:
        print(f"  COBISS search error: {e}")
        return []
    try:
        data = resp.json()
    except Exception:
        print("  JSON parse error")
        return []
    if data.get("status") != "OK":
        return []
    return data.get("value", {}).get("searchItems", [])


def cobiss_display(
    client: httpx.Client, env: str, lang: str, record_id: str
) -> list[str]:
    """Return the addons list from the display endpoint."""
    url = f"{COBISS_API}/{env}/{lang}/search/cobib/display/{record_id}"
    try:
        resp = client.get(url)
        resp.raise_for_status()
    except Exception as e:
        print(f"  COBISS display error: {e}")
        return []
    try:
        data = resp.json()
    except Exception:
        return []
    if data.get("status") != "OK":
        return []
    return data.get("value", {}).get("addons", [])


# ── main ────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs from COBISS+ for SE-European platforms"
    )
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--min-similarity", type=float, default=0.45)
    parser.add_argument("--checkpoint-every", type=int, default=200)
    args = parser.parse_args()

    file_records: dict[str, list[dict]] = {}
    # (fpath, rec, env, lang)
    all_missing: list[tuple[str, dict, str, str]] = []

    for fname, env, lang in TARGET_FILES:
        fpath = DATA_DIR / fname
        if not fpath.exists():
            continue
        records = [
            json.loads(line)
            for line in fpath.read_text(encoding="utf-8").splitlines()
            if line.strip()
        ]
        file_records[str(fpath)] = records
        missing = [r for r in records if not r.get("isbn") and r.get("title")]
        all_missing.extend((str(fpath), r, env, lang) for r in missing)
        print(f"{fname}: {len(records)} total, {len(missing)} missing ({env}/{lang})")

    print(f"\nTotal missing ISBNs: {len(all_missing)}")

    eligible = all_missing
    if args.limit:
        eligible = eligible[: args.limit]
        print(f"Processing first {args.limit}")

    client = httpx.Client(timeout=20.0, follow_redirects=True, headers=HEADERS)
    found_isbn = found_catalog = no_result = no_match = 0

    for i, (fpath, rec, env, lang) in enumerate(eligible, 1):
        title = rec.get("title", "") or ""
        author = rec.get("author", "") or ""
        lst_year = listing_year(rec)

        if (i - 1) % 100 == 0:
            print(
                f"\n[{i}/{len(eligible)}] "
                f"isbn={found_isbn} catalog_id={found_catalog} "
                f"no_result={no_result} no_match={no_match}"
            )

        # Build search query: title + author (short author to avoid false negatives)
        query = title
        if author:
            # Add first word of author surname for disambiguation
            first_word = author.split()[0] if author.split() else ""
            if first_word:
                query = f"{title} {first_word}"

        items = cobiss_search(client, env, lang, query)
        time.sleep(args.delay)

        # If no results with author, retry title-only
        if not items and author:
            items = cobiss_search(client, env, lang, title)
            time.sleep(args.delay)

        if not items:
            no_result += 1
            continue

        matched_isbn = None
        matched_catalog: dict[str, str] = {}

        for item in items[:10]:
            cobiss_title = item.get("primary", "") or ""
            sim = title_similarity(title, cobiss_title)
            if sim < args.min_similarity:
                continue

            cobiss_year = year_from_other(item.get("other"))
            if lst_year and cobiss_year and abs(lst_year - cobiss_year) > 3:
                continue

            # Title/year matched — fetch display for ISBN
            record_id = str(item.get("id", ""))
            if not record_id:
                continue

            addons = cobiss_display(client, env, lang, record_id)
            time.sleep(args.delay)

            isbn = isbn_from_addons(addons)
            if isbn:
                matched_isbn = isbn
                break

            if not matched_catalog:
                cid = cobiss_id_from_addons(addons)
                if cid:
                    matched_catalog = {
                        f"cobiss_{env}": cid,
                        f"cobiss_{env}_url": cobiss_url(env, cid),
                    }

        if matched_isbn:
            rec["isbn"] = matched_isbn
            found_isbn += 1
        elif matched_catalog:
            existing = rec.get("catalog_ids") or {}
            existing.update(matched_catalog)
            rec["catalog_ids"] = existing
            found_catalog += 1
        else:
            no_match += 1

        if not args.dry_run and args.checkpoint_every and i % args.checkpoint_every == 0:
            ckpt_files = {fp for fp, r, _, _ in eligible[:i] if r.get("isbn") or r.get("catalog_ids")}
            for fp in ckpt_files:
                recs = file_records[fp]
                tmp = Path(fp).with_suffix(".jsonl.tmp")
                with tmp.open("w", encoding="utf-8") as fh:
                    for r in recs:
                        fh.write(json.dumps(r, ensure_ascii=False) + "\n")
                tmp.replace(Path(fp))
            if ckpt_files:
                print(f"  [checkpoint] saved {len(ckpt_files)} files at record {i}")

    print(
        f"\nDone. Found {found_isbn} ISBNs, {found_catalog} catalog IDs, "
        f"{no_result} no results, {no_match} no match"
    )

    if args.dry_run or (found_isbn == 0 and found_catalog == 0):
        client.close()
        return

    updated_files = {
        fpath for fpath, rec, _, _ in eligible
        if rec.get("isbn") or rec.get("catalog_ids")
    }
    for fpath in updated_files:
        records = file_records[fpath]
        tmp = Path(fpath).with_suffix(".jsonl.tmp")
        with tmp.open("w", encoding="utf-8") as fh:
            for r in records:
                fh.write(json.dumps(r, ensure_ascii=False) + "\n")
        tmp.replace(Path(fpath))
        print(f"Written {len(records)} records to {fpath}")

    client.close()


if __name__ == "__main__":
    main()
