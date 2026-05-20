"""
Backfill ISBNs for Japanese platform records using the
National Diet Library (NDL) OpenSearch API.

NDL catalog (ndlsearch.ndl.go.jp) covers books in Japan since ~1948.
ISBN in <dc:identifier xsi:type="dcndl:ISBN"> — may be 10- or 13-digit,
hyphens included. 10-digit ISBNs are converted to ISBN-13 (978-prefix).

Title similarity uses character bigram Jaccard (no word-segmentation needed
for Japanese; works for mixed Japanese/Latin titles too).

Targets: nihonfuruhon, surugaya, bookoff (Japan)

Run:
  python3 ndl_backfill.py [--limit N] [--dry-run] [--delay SECS]
"""

import argparse
import json
import re
import sys
import time
from pathlib import Path
from xml.etree import ElementTree as ET

import httpx

sys.stdout.reconfigure(line_buffering=True)

DATA_DIR = Path("data")

TARGET_FILES = [
    "nihonfuruhon_listings.jsonl",
    "surugaya japan_listings.jsonl",
    "bookoff_listings.jsonl",
]

NDL_BASE = "https://ndlsearch.ndl.go.jp/api/opensearch"
NS_DC = "http://purl.org/dc/elements/1.1/"
NS_XSI = "http://www.w3.org/2001/XMLSchema-instance"

HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0",
    "Accept-Language": "ja,en;q=0.8",
}

ISBN10_RE = re.compile(r"^[0-9Xx]{10}$")
ISBN13_RE = re.compile(r"^97[89][0-9]{10}$")
YEAR_RE = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")

# Magazine/periodical noise — these won't be in NDL book catalog
PERIODICAL_RE = re.compile(r"(\d{4}年\d{1,2}月号|\d{4}年\d{1,2}月|\d+月号|Vol\.\d+|No\.\d+)", re.IGNORECASE)


def normalize_isbn(raw: str) -> str:
    return re.sub(r"[^0-9Xx]", "", raw).upper()


def isbn10_to_isbn13(isbn10: str) -> str | None:
    """Convert a valid 10-char ISBN-10 (no hyphens) to ISBN-13."""
    digits = isbn10[:9]
    if not digits.isdigit():
        return None
    raw = "978" + digits
    total = sum((3 if i % 2 else 1) * int(d) for i, d in enumerate(raw))
    check = (10 - total % 10) % 10
    return raw + str(check)


def parse_isbn(raw: str) -> str | None:
    """Return a clean ISBN-13 string or None."""
    clean = normalize_isbn(raw)
    if len(clean) == 13 and ISBN13_RE.match(clean):
        return clean
    if len(clean) == 10:
        return isbn10_to_isbn13(clean)
    return None


def char_bigrams(text: str) -> set[str]:
    """Character bigram set for a string (ignoring whitespace)."""
    t = re.sub(r"\s+", "", text)
    return {t[i:i+2] for i in range(len(t) - 1)}


def title_similarity(a: str, b: str) -> float:
    """Bigram Jaccard similarity — works for Japanese and mixed scripts."""
    ba = char_bigrams(a)
    bb = char_bigrams(b)
    if not ba or not bb:
        return 0.0
    return len(ba & bb) / len(ba | bb)


def is_periodical(rec: dict) -> bool:
    """True if this record looks like a magazine issue, not a book."""
    title = rec.get("title", "") or ""
    return bool(PERIODICAL_RE.search(title))


_NDL_NONSORT = re.compile(r"[\x98\x9c■]")  # NDL/MARC non-sorting markers


def ndl_search(client: httpx.Client, title: str, author: str = "") -> list[ET.Element]:
    """Search NDL and return list of <item> elements."""
    # Note: mediatype=1 (books) silently returns 0 results for many valid queries.
    # Omitting it and relying on ISBN presence + title similarity to filter non-books.
    params: dict[str, str] = {"title": title, "cnt": "3"}
    if author:
        params["creator"] = author
    try:
        resp = client.get(NDL_BASE, params=params)
        resp.raise_for_status()
    except Exception as e:
        print(f"  NDL request error: {e}")
        return []
    try:
        root = ET.fromstring(resp.content)
    except ET.ParseError as e:
        print(f"  XML parse error: {e}")
        return []
    return root.findall(".//item")


def item_isbn(item: ET.Element) -> str | None:
    """Return first valid ISBN-13 from dc:identifier[@type='dcndl:ISBN*']."""
    for el in item.findall(f"{{{NS_DC}}}identifier"):
        xtype = el.get(f"{{{NS_XSI}}}type", "")
        if "ISBN" in xtype and el.text:
            isbn = parse_isbn(el.text)
            if isbn:
                return isbn
    return None


def item_catalog_ids(item: ET.Element) -> dict[str, str]:
    """Return non-ISBN NDL identifiers: NDLBibID, JPNO, OPLMARCNO."""
    ids: dict[str, str] = {}
    type_map = {
        "dcndl:NDLBibID": "ndl",
        "dcndl:JPNO": "jpno",
        "dcndl:OPLMARCNO": "oplmarcno",
        "dcndl:NIIBibID": "nii",
    }
    for el in item.findall(f"{{{NS_DC}}}identifier"):
        xtype = el.get(f"{{{NS_XSI}}}type", "")
        key = type_map.get(xtype)
        if key and el.text and key not in ids:
            ids[key] = el.text.strip()
    # Derive NDL persistent URL from item link if NDLBibID present
    if "ndl" in ids:
        ids["ndl_url"] = f"https://ndlsearch.ndl.go.jp/books/R100000001-I{ids['ndl']}"
    return ids


def item_title(item: ET.Element) -> str:
    el = item.find("title")
    raw = (el.text or "").strip() if el is not None else ""
    # Also try dc:title if plain title is empty (some items only have dc:title)
    if not raw:
        dc_t = item.find(f"{{{NS_DC}}}title")
        raw = (dc_t.text or "").strip() if dc_t is not None else ""
    return _NDL_NONSORT.sub("", raw).strip()


def item_year(item: ET.Element) -> int | None:
    el = item.find(f"{{{NS_DC}}}date")
    if el is not None and el.text is not None:
        m = YEAR_RE.search(el.text)
        if m:
            return int(m.group(1))
    return None


def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs from NDL for Japanese platforms"
    )
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--min-similarity", type=float, default=0.5)
    parser.add_argument("--checkpoint-every", type=int, default=200)
    args = parser.parse_args()

    file_records: dict[str, list[dict]] = {}
    all_missing: list[tuple[str, dict]] = []

    for fname in TARGET_FILES:
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
        all_missing.extend((str(fpath), r) for r in missing)
        print(f"{fname}: {len(records)} total, {len(missing)} missing")

    print(f"\nTotal missing ISBNs: {len(all_missing)}")

    # Pre-filter: skip magazine/periodical issues (no NDL book entry)
    skipped_periodical = 0
    eligible: list[tuple[str, dict]] = []
    for fpath, rec in all_missing:
        if is_periodical(rec):
            skipped_periodical += 1
            continue
        eligible.append((fpath, rec))

    print(f"Pre-filtered: {skipped_periodical} periodicals → {len(eligible)} to query")

    if args.limit:
        eligible = eligible[: args.limit]
        print(f"Processing first {args.limit}")

    client = httpx.Client(timeout=20.0, follow_redirects=True, headers=HEADERS)
    found_isbn = found_catalog = no_result = no_match = errors = 0

    for i, (fpath, rec) in enumerate(eligible, 1):
        title = rec.get("title", "")
        author = rec.get("author", "") or ""
        lst_year = None
        y = rec.get("publication_year") or rec.get("year") or ""
        if y:
            m = YEAR_RE.search(str(y))
            if m:
                lst_year = int(m.group(1))

        if (i - 1) % 100 == 0:
            print(
                f"\n[{i}/{len(eligible)}] "
                f"isbn={found_isbn} catalog_id={found_catalog} "
                f"no_result={no_result} no_match={no_match}"
            )

        items = ndl_search(client, title, author)
        time.sleep(args.delay)

        if not items and author:
            items = ndl_search(client, title)
            time.sleep(args.delay)

        if not items:
            no_result += 1
            continue

        matched_isbn = None
        matched_catalog: dict[str, str] = {}

        for item in items:
            ndl_t = item_title(item)
            sim = title_similarity(title, ndl_t)
            if sim < args.min_similarity:
                continue

            ndl_yr = item_year(item)
            if lst_year and ndl_yr and abs(lst_year - ndl_yr) > 3:
                continue

            # Title matched — try ISBN first, fall back to catalog IDs
            isbn = item_isbn(item)
            if isbn:
                matched_isbn = isbn
                break
            elif not matched_catalog:
                matched_catalog = item_catalog_ids(item)

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
            ckpt_files = {fp for fp, r in eligible[:i] if r.get("isbn") or r.get("catalog_ids")}
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
        f"{no_result} no results, {no_match} no match, {errors} errors"
    )

    if args.dry_run or (found_isbn == 0 and found_catalog == 0):
        client.close()
        return

    updated_files = {
        fpath for fpath, rec in eligible
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
