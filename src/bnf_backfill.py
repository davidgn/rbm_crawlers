"""
Backfill ISBNs for French-language platform records using the
Bibliothèque nationale de France (BNF) SRU catalog.

API: https://catalogue.bnf.fr/api/SRU
  operation=searchRetrieve
  query=bib.title adj "TITLE"
  recordSchema=marcxchange   (returns mxc: UNIMARC; ISBN in tag=010 subfield a)

Title similarity uses character bigram Jaccard.  Author is optional —
used for validation when present but not required for search (many target
platforms have titles without author fields).

Targets:
  librairie bonpasteur — French bookshop records, title-only, no authors

Run:
  python3 bnf_backfill.py [--dry-run] [--limit N]
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
    "librairie bonpasteur_listings.jsonl",
]

BNF_SRU = "https://catalogue.bnf.fr/api/SRU"
MXC_NS = "http://www.loc.gov/MARC21/slim"
HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0 (contact: rbm-project)",
    "Accept": "application/xml",
}

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
YEAR_RE = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")


def char_bigrams(text: str) -> set[str]:
    t = re.sub(r"\s+", "", text.lower())
    return {t[i:i + 2] for i in range(len(t) - 1)}


def title_similarity(a: str, b: str) -> float:
    ba, bb = char_bigrams(a), char_bigrams(b)
    if not ba or not bb:
        return 0.0
    return len(ba & bb) / len(ba | bb)


def parse_isbn(raw: str) -> str | None:
    clean = re.sub(r"[^0-9]", "", raw)
    if len(clean) == 13 and ISBN13_RE.fullmatch(clean):
        return clean
    return None


def listing_year(rec: dict) -> int | None:
    for field in ("publication_year", "year", "edition"):
        val = rec.get(field)
        if val:
            m = YEAR_RE.search(str(val))
            if m:
                return int(m.group(1))
    return None


def bnf_search(client: httpx.Client, title: str, max_records: int = 5) -> list[dict]:
    """Return list of {title, isbn, year} from BNF SRU."""
    # Strip French stop-word noise from long titles
    query_title = re.sub(r"\s+", " ", title.strip())[:120]
    try:
        resp = client.get(
            BNF_SRU,
            params={
                "version": "1.2",
                "operation": "searchRetrieve",
                "query": f'bib.title adj "{query_title}"',
                "maximumRecords": str(max_records),
            },
        )
        resp.raise_for_status()
    except Exception as e:
        print(f"  BNF error: {e}")
        return []

    try:
        root = ET.fromstring(resp.text)
    except ET.ParseError as e:
        print(f"  BNF XML parse error: {e}")
        return []

    results = []
    # Records are mxc:record inside srw:recordData
    for rec_el in root.iter(f"{{{MXC_NS}}}record"):
        item: dict = {}
        # ISBN: tag 010 subfield a
        for df in rec_el.findall(f"{{{MXC_NS}}}datafield[@tag='010']"):
            for sf in df.findall(f"{{{MXC_NS}}}subfield[@code='a']"):
                isbn = parse_isbn(sf.text or "")
                if isbn:
                    item["isbn"] = isbn
                    break
        # Title: tag 200 subfield a
        for df in rec_el.findall(f"{{{MXC_NS}}}datafield[@tag='200']"):
            for sf in df.findall(f"{{{MXC_NS}}}subfield[@code='a']"):
                item["title"] = (sf.text or "").strip()
                break
        # Year: tag 210 subfield d
        for df in rec_el.findall(f"{{{MXC_NS}}}datafield[@tag='210']"):
            for sf in df.findall(f"{{{MXC_NS}}}subfield[@code='d']"):
                m = YEAR_RE.search(sf.text or "")
                if m:
                    item["year"] = int(m.group(1))
                break
        if item:
            results.append(item)
    return results


def is_eligible(rec: dict) -> bool:
    if rec.get("isbn") or rec.get("catalog_ids"):
        return False
    return bool(rec.get("title"))


def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs from BNF SRU for French-language platforms"
    )
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--min-similarity", type=float, default=0.5)
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--checkpoint-every", type=int, default=50)
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
    if args.limit:
        all_eligible = all_eligible[: args.limit]
        print(f"Processing first {args.limit}")

    client = httpx.Client(timeout=20.0, follow_redirects=True, headers=HEADERS)
    found_isbn = no_result = no_match = 0

    for i, (fpath, rec) in enumerate(all_eligible, 1):
        title = rec.get("title") or ""
        lst_year = listing_year(rec)

        if (i - 1) % 20 == 0:
            print(f"[{i}/{len(all_eligible)}] isbn={found_isbn} no_result={no_result} no_match={no_match}")

        bnf_recs = bnf_search(client, title)
        time.sleep(args.delay)

        if not bnf_recs:
            no_result += 1
            continue

        matched_isbn = None
        for br in bnf_recs:
            cand_title = br.get("title") or ""
            if title_similarity(title, cand_title) < args.min_similarity:
                continue
            if lst_year and br.get("year") and abs(lst_year - br["year"]) > 3:
                continue
            if br.get("isbn"):
                matched_isbn = br["isbn"]
                break

        if matched_isbn:
            rec["isbn"] = matched_isbn
            found_isbn += 1
            print(f"  {title[:50]} → {matched_isbn}")
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
                print(f"  [checkpoint] saved {len(ckpt_files)} files at record {i}")

    print(f"\nDone. isbn={found_isbn} no_result={no_result} no_match={no_match}")

    if args.dry_run or found_isbn == 0:
        client.close()
        return

    updated = {fpath for fpath, rec in all_eligible if rec.get("isbn")}
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
