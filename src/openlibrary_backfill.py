"""
Backfill ISBNs for Indian/Pakistani platform records using the
Open Library Search API (openlibrary.org).

Open Library covers broad international books including Indian publishers
and has generous rate limits with no API key required.

API: GET https://openlibrary.org/search.json?q={query}&limit=5
     Response: {docs: [{title, author_name, isbn, publish_year, publisher, key}]}

Title matching: character bigram Jaccard (same as COBISS/NDL backfills).
Year matching: edition year from bookspie used for ±3 year check.

Targets:
  bookspie: title + author + publisher + edition_year (13,570 missing)
  nearbook: title + author for ~4,789 Latin-script records (16,872 total missing)
  kitabain: title + author + publisher (1,701 missing)
  bookmamu: title + author (1,490 missing)

Skipped (insufficient data for matching):
  myoldbooks: no author, vague SCHOOL|GRADE|SUBJECT titles
  reusebooks: almost no author data
  taaze_tw: CJK titles with no catalog API accessible

Run:
  python3 openlibrary_backfill.py [--limit N] [--dry-run] [--delay SECS]
"""

import argparse
import io
import json
import re
import sys
import time
from pathlib import Path

import httpx
import zstandard

sys.stdout.reconfigure(line_buffering=True)

DATA_DIR = Path("data")

TARGET_FILES = [
    ("bookspie_listings.jsonl",),
    ("nearbook_listings.jsonl",),
    ("kitabain_listings.jsonl",),
    ("bookmamu_listings.jsonl",),
]

OL_SEARCH = "https://openlibrary.org/search.json"
OL_WORKS_URL = "https://openlibrary.org"

HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0 (contact: rbm-project)",
    "Accept": "application/json",
}

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
YEAR_RE = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")
INDIAN_SCRIPT_RE = re.compile(r"[ऀ-ॿ઀-૿଀-୿ఀ-౿ಀ-೿ഀ-ൿ฀-๿؀-ۿ]")


def read_jsonl(path: Path) -> list[dict]:
    """Read a .jsonl or .jsonl.zst file into a list of dicts."""
    zst = path.with_suffix(path.suffix + ".zst") if not path.suffix == ".zst" else path
    if not path.exists() and zst.exists():
        path = zst
    if path.suffix == ".zst":
        dctx = zstandard.ZstdDecompressor()
        raw = dctx.decompress(path.read_bytes(), max_output_size=2 << 30)
        lines = raw.decode("utf-8").splitlines()
    else:
        lines = path.read_text(encoding="utf-8").splitlines()
    return [json.loads(l) for l in lines if l.strip()]


# ── text helpers ─────────────────────────────────────────────────────────────

def char_bigrams(text: str) -> set[str]:
    t = re.sub(r"\s+", "", text.lower())
    return {t[i:i+2] for i in range(len(t) - 1)}


def title_similarity(a: str, b: str) -> float:
    ba = char_bigrams(a)
    bb = char_bigrams(b)
    if not ba or not bb:
        return 0.0
    return len(ba & bb) / len(ba | bb)


# ── ISBN parsing ──────────────────────────────────────────────────────────────

def parse_isbn13(raw: str) -> str | None:
    clean = re.sub(r"[^0-9]", "", raw)
    if len(clean) == 13 and ISBN13_RE.fullmatch(clean):
        return clean
    return None


def isbn13_from_list(isbns: list[str]) -> str | None:
    for raw in isbns or []:
        isbn = parse_isbn13(raw)
        if isbn:
            return isbn
    return None


# ── year extraction ───────────────────────────────────────────────────────────

def listing_year(rec: dict) -> int | None:
    for field in ("publication_year", "year", "edition"):
        val = rec.get(field)
        if val:
            m = YEAR_RE.search(str(val))
            if m:
                return int(m.group(1))
    return None


def ol_year(doc: dict) -> int | None:
    years = doc.get("publish_year") or []
    if years:
        return max(years)  # most recent edition
    fpy = doc.get("first_publish_year")
    if fpy:
        return fpy
    return None


# ── record eligibility ────────────────────────────────────────────────────────

def is_eligible(rec: dict) -> bool:
    """Skip records without usable search data."""
    if rec.get("isbn"):
        return False
    title = rec.get("title", "") or ""
    author = rec.get("author", "") or ""
    if not title:
        return False
    # Require at least author OR a non-Indian-script title
    if not author:
        return False
    if INDIAN_SCRIPT_RE.search(title + author):
        return False
    return True


# ── Open Library search ───────────────────────────────────────────────────────

def ol_search(client: httpx.Client, query: str) -> list[dict]:
    try:
        resp = client.get(
            OL_SEARCH,
            params={"q": query, "limit": "5",
                    "fields": "key,title,author_name,isbn,publish_year,first_publish_year"},
        )
        resp.raise_for_status()
    except Exception as e:
        print(f"  OL search error: {e}")
        return []
    try:
        data = resp.json()
    except Exception:
        print("  JSON parse error")
        return []
    return data.get("docs", [])


# ── main ──────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs from Open Library for Indian/Pakistani platforms"
    )
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--min-similarity", type=float, default=0.4)
    parser.add_argument("--checkpoint-every", type=int, default=1000,
                        help="Save files to disk every N records (default 1000)")
    args = parser.parse_args()

    file_records: dict[str, list[dict]] = {}
    all_eligible: list[tuple[str, dict]] = []

    for (fname,) in TARGET_FILES:
        fpath = DATA_DIR / fname
        zst = fpath.with_suffix(fpath.suffix + ".zst")
        if not fpath.exists() and not zst.exists():
            continue
        records = read_jsonl(fpath)
        file_records[str(fpath)] = records
        missing = [r for r in records if not r.get("isbn") and r.get("title")]
        eligible = [r for r in missing if is_eligible(r)]
        all_eligible.extend((str(fpath), r) for r in eligible)
        print(
            f"{fname}: {len(records)} total, {len(missing)} missing, "
            f"{len(eligible)} eligible"
        )

    print(f"\nTotal eligible: {len(all_eligible)}")

    to_process = all_eligible
    if args.limit:
        to_process = to_process[: args.limit]
        print(f"Processing first {args.limit}")

    client = httpx.Client(
        timeout=20.0, follow_redirects=True, headers=HEADERS
    )
    found_isbn = found_catalog = no_result = no_match = 0

    for i, (fpath, rec) in enumerate(to_process, 1):
        title = rec.get("title", "") or ""
        author = rec.get("author", "") or ""
        lst_year = listing_year(rec)

        if (i - 1) % 200 == 0:
            print(
                f"\n[{i}/{len(to_process)}] "
                f"isbn={found_isbn} catalog={found_catalog} "
                f"no_result={no_result} no_match={no_match}"
            )

        if not args.dry_run and args.checkpoint_every and i % args.checkpoint_every == 0:
            checkpoint_files = {
                fpath for fpath, rec in to_process[:i]
                if rec.get("isbn") or rec.get("catalog_ids")
            }
            for fpath in checkpoint_files:
                records = file_records[fpath]
                tmp = Path(fpath).with_suffix(".jsonl.tmp")
                with tmp.open("w", encoding="utf-8") as fh:
                    for r in records:
                        fh.write(json.dumps(r, ensure_ascii=False) + "\n")
                tmp.replace(Path(fpath))
            print(f"  [checkpoint] saved {len(checkpoint_files)} files")

        # Query: title + first author word for disambiguation
        author_word = author.split()[0] if author.split() else ""
        query = f"{title} {author_word}".strip() if author_word else title

        docs = ol_search(client, query)
        time.sleep(args.delay)

        # Retry title-only if no results
        if not docs and author_word:
            docs = ol_search(client, title)
            time.sleep(args.delay)

        if not docs:
            no_result += 1
            continue

        matched_isbn = None
        matched_catalog: dict[str, str] = {}

        for doc in docs:
            ol_title = doc.get("title", "") or ""
            sim = title_similarity(title, ol_title)
            if sim < args.min_similarity:
                continue

            doc_year = ol_year(doc)
            if lst_year and doc_year and abs(lst_year - doc_year) > 3:
                continue

            isbn = isbn13_from_list(doc.get("isbn") or [])
            if isbn:
                matched_isbn = isbn
                break

            if not matched_catalog:
                key = doc.get("key", "")
                if key:
                    matched_catalog = {
                        "openlibrary": key,
                        "openlibrary_url": f"{OL_WORKS_URL}{key}",
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

    print(
        f"\nDone. Found {found_isbn} ISBNs, {found_catalog} catalog IDs, "
        f"{no_result} no results, {no_match} no match"
    )

    if args.dry_run or (found_isbn == 0 and found_catalog == 0):
        client.close()
        return

    updated_files = {
        fpath for fpath, rec in to_process
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
