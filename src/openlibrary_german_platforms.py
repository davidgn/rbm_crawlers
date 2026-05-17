"""
OL ISBN backfill for German/European platforms after DNB pass.
Targets records that DNB couldn't find — includes English/international
books sold on German platforms.

Run AFTER dnb_backfill.py completes to avoid write conflicts.
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

TARGET_FILES = [
    "buchfreund_listings.jsonl",
    "booklooker_listings.jsonl",
    "zvab germany_listings.jsonl",
    "zvab austria_listings.jsonl",
    "zvab switzerland_listings.jsonl",
    "abebooks_de_listings.jsonl",
    "abebooks italy_listings.jsonl",
    "booksinbelgium_listings.jsonl",
]

OL_SEARCH = "https://openlibrary.org/search.json"
OL_WORKS_URL = "https://openlibrary.org"
HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0 (contact: rbm-project)",
    "Accept": "application/json",
}

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
YEAR_RE = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")
NON_LATIN_RE = re.compile(r"[ऀ-ॿ઀-૿ఀ-౿ಀ-೿ഀ-ൿ฀-๿؀-ۿ一-鿿ก-ไЀ-ӿ]")


def char_bigrams(text: str) -> set[str]:
    t = re.sub(r"\s+", "", text.lower())
    return {t[i:i+2] for i in range(len(t) - 1)}


def title_similarity(a: str, b: str) -> float:
    ba, bb = char_bigrams(a), char_bigrams(b)
    if not ba or not bb:
        return 0.0
    return len(ba & bb) / len(ba | bb)


def parse_isbn13(raw: str) -> str | None:
    clean = re.sub(r"[^0-9]", "", raw)
    if len(clean) == 13 and ISBN13_RE.fullmatch(clean):
        return clean
    return None


def isbn13_from_list(isbns: list) -> str | None:
    for raw in isbns or []:
        isbn = parse_isbn13(raw)
        if isbn:
            return isbn
    return None


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
        return max(years)
    fpy = doc.get("first_publish_year")
    return fpy if fpy else None


def is_eligible(rec: dict) -> bool:
    if rec.get("isbn") or rec.get("catalog_ids"):
        return False
    title = rec.get("title") or ""
    author = rec.get("author") or ""
    if not title or not author:
        return False
    if NON_LATIN_RE.search(title + author):
        return False
    return True


def ol_search(client: httpx.Client, query: str) -> list[dict]:
    try:
        resp = client.get(
            OL_SEARCH,
            params={"q": query, "limit": "5",
                    "fields": "key,title,author_name,isbn,publish_year,first_publish_year"},
        )
        resp.raise_for_status()
        return resp.json().get("docs", [])
    except Exception as e:
        print(f"  OL error: {e}")
        return []


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--delay", type=float, default=0.4)
    parser.add_argument("--min-similarity", type=float, default=0.4)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--checkpoint-every", type=int, default=500)
    args = parser.parse_args()

    file_records: dict[str, list[dict]] = {}
    all_eligible: list[tuple[str, dict]] = []

    for fname in TARGET_FILES:
        fpath = DATA_DIR / fname
        if not fpath.exists():
            continue
        records = [json.loads(l) for l in fpath.read_text(encoding="utf-8").splitlines() if l.strip()]
        file_records[str(fpath)] = records
        eligible = [r for r in records if is_eligible(r)]
        if eligible:
            all_eligible.extend((str(fpath), r) for r in eligible)
            print(f"{fname}: {len(records)} total, {len(eligible)} eligible")

    print(f"\nTotal eligible: {len(all_eligible)}")

    client = httpx.Client(timeout=20.0, follow_redirects=True, headers=HEADERS)
    found_isbn = found_catalog = no_result = no_match = 0

    for i, (fpath, rec) in enumerate(all_eligible, 1):
        title = rec.get("title") or ""
        author = rec.get("author") or ""
        lst_year = listing_year(rec)

        if (i - 1) % 200 == 0:
            print(f"[{i}/{len(all_eligible)}] isbn={found_isbn} catalog={found_catalog} "
                  f"no_result={no_result} no_match={no_match}")

        # Checkpoint save
        if not args.dry_run and args.checkpoint_every and i % args.checkpoint_every == 0:
            updated = {fp for fp, r in all_eligible[:i] if r.get("isbn") or r.get("catalog_ids")}
            for fp in updated:
                recs = file_records[fp]
                tmp = Path(fp).with_suffix(".jsonl.tmp")
                with tmp.open("w", encoding="utf-8") as fh:
                    for r in recs:
                        fh.write(json.dumps(r, ensure_ascii=False) + "\n")
                tmp.replace(Path(fp))
            if updated:
                print(f"  [checkpoint] saved {len(updated)} files at record {i}")

        author_word = author.split()[0] if author.split() else ""
        query = f"{title} {author_word}".strip() if author_word else title
        docs = ol_search(client, query)
        time.sleep(args.delay)

        if not docs and author_word:
            docs = ol_search(client, title)
            time.sleep(args.delay)

        if not docs:
            no_result += 1
            continue

        matched_isbn = None
        matched_catalog: dict[str, str] = {}

        for doc in docs:
            ol_title = doc.get("title") or ""
            if title_similarity(title, ol_title) < args.min_similarity:
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
                    matched_catalog = {"openlibrary": key, "openlibrary_url": f"{OL_WORKS_URL}{key}"}

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

    print(f"\nDone. isbn={found_isbn} catalog={found_catalog} "
          f"no_result={no_result} no_match={no_match}")

    if args.dry_run or (found_isbn == 0 and found_catalog == 0):
        client.close()
        return

    updated = {fpath for fpath, rec in all_eligible if rec.get("isbn") or rec.get("catalog_ids")}
    for fpath in updated:
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
