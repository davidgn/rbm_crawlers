"""
Backfill ISBNs for taaze_tw records by fetching their known product page URLs.

TAAZE.tw product pages contain the ISBN in both LD+JSON and meta tags.
All missing records already have listing_url set, so no search is needed —
just fetch each page and extract the ISBN-13.

Run:
  python3 taaze_isbn_backfill.py [--limit N] [--dry-run] [--delay SECS]
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
TARGET_FILE = DATA_DIR / "taaze_tw_listings.jsonl"

ISBN13_RE = re.compile(r"97[89][0-9]{10}")

HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 "
        "(KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    ),
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "zh-TW,zh;q=0.9,en;q=0.8",
}


def extract_isbn13(html: str) -> str | None:
    matches = ISBN13_RE.findall(html)
    if matches:
        return matches[0]
    return None


def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs for taaze_tw by scraping product page URLs"
    )
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--delay", type=float, default=0.6)
    parser.add_argument("--checkpoint-every", type=int, default=500)
    args = parser.parse_args()

    if not TARGET_FILE.exists():
        print(f"Not found: {TARGET_FILE}")
        return

    records = [
        json.loads(line)
        for line in TARGET_FILE.read_text(encoding="utf-8").splitlines()
        if line.strip()
    ]

    missing = [
        r for r in records
        if not r.get("isbn") and r.get("listing_url") and r.get("title") != "Cached Item"
    ]
    print(f"taaze_tw_listings.jsonl: {len(records)} total, {len(missing)} to fetch")

    to_process = missing
    if args.limit:
        to_process = to_process[: args.limit]
        print(f"Processing first {args.limit}")

    client = httpx.Client(
        timeout=20.0,
        follow_redirects=True,
        headers=HEADERS,
        verify=False,
    )

    found = skipped = errors = 0

    for i, rec in enumerate(to_process, 1):
        if (i - 1) % 200 == 0:
            print(f"\n[{i}/{len(to_process)}] found={found} errors={errors}")

        url = rec["listing_url"]
        try:
            resp = client.get(url)
            resp.raise_for_status()
        except Exception as e:
            print(f"  Error {url}: {e}")
            errors += 1
            time.sleep(args.delay)
            continue

        isbn = extract_isbn13(resp.text)
        if isbn:
            rec["isbn"] = isbn
            found += 1
        else:
            skipped += 1

        time.sleep(args.delay)

        if not args.dry_run and args.checkpoint_every and i % args.checkpoint_every == 0 and found > 0:
            tmp = TARGET_FILE.with_suffix(".jsonl.tmp")
            with tmp.open("w", encoding="utf-8") as fh:
                for r in records:
                    fh.write(json.dumps(r, ensure_ascii=False) + "\n")
            tmp.replace(TARGET_FILE)
            print(f"  [checkpoint] saved at record {i} (found={found})")

    print(f"\nDone. Found {found} ISBNs, {skipped} no ISBN on page, {errors} errors")

    if args.dry_run or found == 0:
        client.close()
        return

    tmp = TARGET_FILE.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for r in records:
            fh.write(json.dumps(r, ensure_ascii=False) + "\n")
    tmp.replace(TARGET_FILE)
    print(f"Written {len(records)} records to {TARGET_FILE}")

    client.close()


if __name__ == "__main__":
    main()
