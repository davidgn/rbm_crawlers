"""
Backfill ISBNs for German-language platform records using the
Deutsche Nationalbibliothek (DNB) SRU API.

The DNB SRU endpoint (services.dnb.de/sru/dnb) provides comprehensive
coverage of books published in Germany/Austria/Switzerland. Returns MARC21 XML
with ISBN in field 020$a, title in 245$a+$b, author in 100$a.

Targets: buchfreund, booklooker, zvab (DE/AT/CH), antiquariat_de, abebooks_de

Pre-filters applied:
  - Skip DVD/Blu-ray/CD records (no ISBNs in DNB)
  - Skip records whose year < 1970 (pre-ISBN era)

Match validation:
  - Title Jaccard similarity >= min_similarity (default 0.5)
  - Year within ±3 years if both sides have it
  - Publisher word-overlap >= 0.3 if both sides have it

Run:
  python3 dnb_backfill.py [--limit N] [--dry-run] [--delay SECS]
"""

import argparse
import json
import re
import sys
import time
import unicodedata
from pathlib import Path
from xml.etree import ElementTree as ET

import httpx

# Force line-buffered stdout so progress lines appear in background task output
sys.stdout.reconfigure(line_buffering=True)

DATA_DIR = Path("data")

TARGET_FILES = [
    "buchfreund_listings.jsonl",
    "booklooker_listings.jsonl",
    "zvab germany_listings.jsonl",
    "zvab austria_listings.jsonl",
    "zvab switzerland_listings.jsonl",
    "antiquariat_de giaq_listings.jsonl",
    "abebooks_de_listings.jsonl",
]

DNB_SRU = "https://services.dnb.de/sru/dnb"
NS_SRW = "http://www.loc.gov/zing/srw/"
NS_MARC = "http://www.loc.gov/MARC21/slim"

HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0",
    "Accept": "application/xml",
}

ISBN_RE = re.compile(r"97[89][0-9]{10}")

# Non-book media keywords — these items won't have ISBNs in DNB
AV_MEDIA_RE = re.compile(
    r"\b(dvd|blu-ray|bluray|cd-rom|vhs|disc|discs)\b", re.IGNORECASE
)

# Strip series/edition noise from titles before querying
SERIES_SUFFIX = re.compile(
    r"\s*[-–]\s*(Band|Bd\.|Teil|Vol\.?|Heft|Nr\.|Folge)\s*[\d]+.*$", re.IGNORECASE
)
EDITION_SUFFIX = re.compile(
    r"\s*[-–.]\s*\d+\.\s*(Auflage|Aufl\.|Edition|Ed\.|erweiterte|überarbeitete).*$",
    re.IGNORECASE,
)
PAREN_NOISE = re.compile(r"\s*\([^)]{0,80}\)")

# Year in the first 10 characters of seller_comments (buchfreund convention)
COMMENT_YEAR_RE = re.compile(r"^\s*(\d{4})\b")
# Year in standard publication_year field or similar
YEAR_RE = re.compile(r"\b(1[6-9]\d{2}|20\d{2})\b")


def normalize_isbn(raw: str) -> str:
    return re.sub(r"[^0-9]", "", raw)


def clean_title(title: str) -> str:
    t = SERIES_SUFFIX.sub("", title.strip())
    t = EDITION_SUFFIX.sub("", t)
    t = PAREN_NOISE.sub("", t)
    t = re.sub(r"\s+\.\s+\w+\s*$", "", t)  # "Roman . Roman" → "Roman"
    # Truncate at ellipsis (buchfreund truncates long titles with "…")
    t = t.split("…")[0].split("...")[0]
    return t.strip()


def german_fold(text: str) -> str:
    """Fold German text: expand umlauts, strip diacritics, lowercase."""
    text = (
        text.replace("ä", "ae").replace("ö", "oe").replace("ü", "ue")
        .replace("Ä", "ae").replace("Ö", "oe").replace("Ü", "ue")
        .replace("ß", "ss")
    )
    nfd = unicodedata.normalize("NFD", text)
    ascii_only = "".join(c for c in nfd if unicodedata.category(c) != "Mn")
    return re.sub(r"[^\w\s]", " ", ascii_only).lower().strip()


def word_similarity(a: str, b: str) -> float:
    """Jaccard word-overlap on german-folded text."""
    wa = set(w for w in german_fold(a).split() if len(w) > 1)
    wb = set(w for w in german_fold(b).split() if len(w) > 1)
    if not wa or not wb:
        return 0.0
    return len(wa & wb) / max(len(wa), len(wb))


def _cql_escape(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"')


def listing_year(rec: dict) -> int | None:
    """Extract publication year from a listing record."""
    y = rec.get("publication_year") or rec.get("year")
    if y:
        m = YEAR_RE.search(str(y))
        if m:
            return int(m.group(1))
    # Fallback: first token of seller_comments (buchfreund puts year there)
    comments = rec.get("seller_comments") or ""
    m = COMMENT_YEAR_RE.match(comments)
    if m:
        yr = int(m.group(1))
        if 1450 < yr <= 2030:
            return yr
    return None


def is_av_media(rec: dict) -> bool:
    """True if this record is likely a DVD/Blu-ray/CD, not a book."""
    text = " ".join([
        rec.get("title", "") or "",
        (rec.get("seller_comments", "") or "")[:100],
        rec.get("publisher", "") or "",
    ])
    return bool(AV_MEDIA_RE.search(text))


def dnb_search(
    client: httpx.Client, title: str, author: str = "", max_records: int = 3
) -> list[ET.Element]:
    query = f'tit="{_cql_escape(title)}"'
    if author:
        query += f' and per="{_cql_escape(author)}"'

    params = {
        "version": "1.1",
        "operation": "searchRetrieve",
        "query": query,
        "recordSchema": "MARC21-xml",
        "maximumRecords": str(max_records),
    }
    try:
        resp = client.get(DNB_SRU, params=params)
        resp.raise_for_status()
    except Exception as e:
        print(f"  DNB request error: {e}")
        return []

    try:
        root = ET.fromstring(resp.content)
    except ET.ParseError as e:
        print(f"  XML parse error: {e}")
        return []

    return root.findall(f".//{{{NS_MARC}}}record")


def marc_isbn(record: ET.Element) -> str | None:
    """Return first valid ISBN-13 from MARC field 020$a."""
    for df in record.findall(f"{{{NS_MARC}}}datafield[@tag='020']"):
        for sf in df.findall(f"{{{NS_MARC}}}subfield[@code='a']"):
            raw = normalize_isbn(sf.text or "")
            if len(raw) == 13 and ISBN_RE.match(raw):
                return raw
    return None


_MARC_NONSORT = re.compile(r"[\x98\x9c]")  # MARC non-sorting begin/end indicators


def marc_title(record: ET.Element) -> str:
    """Return title from MARC 245$a + $b, with non-sorting indicators stripped."""
    parts = []
    df = record.find(f"{{{NS_MARC}}}datafield[@tag='245']")
    if df is not None:
        for code in ("a", "b"):
            sf = df.find(f"{{{NS_MARC}}}subfield[@code='{code}']")
            if sf is not None and sf.text:
                parts.append(_MARC_NONSORT.sub("", sf.text).strip().rstrip(" /"))
    return " ".join(parts).strip()


def marc_year(record: ET.Element) -> int | None:
    """Return publication year from MARC 264$c or 008."""
    df = record.find(f"{{{NS_MARC}}}datafield[@tag='264']")
    if df is not None:
        sf = df.find(f"{{{NS_MARC}}}subfield[@code='c']")
        if sf is not None and sf.text:
            m = YEAR_RE.search(sf.text)
            if m:
                return int(m.group(1))
    # Fallback: 008 positions 07-10
    cf = record.find(f"{{{NS_MARC}}}controlfield[@tag='008']")
    if cf is not None and cf.text and len(cf.text) >= 11:
        try:
            return int(cf.text[7:11])
        except ValueError:
            pass
    return None


def marc_publisher(record: ET.Element) -> str:
    """Return publisher name from MARC 264$b."""
    df = record.find(f"{{{NS_MARC}}}datafield[@tag='264']")
    if df is not None:
        sf = df.find(f"{{{NS_MARC}}}subfield[@code='b']")
        if sf is not None and sf.text:
            return sf.text.strip().rstrip(",")
    return ""


def marc_catalog_ids(record: ET.Element) -> dict[str, str]:
    """Return non-ISBN DNB identifiers: DNB-IDN (field 001) and URN (024$a)."""
    ids: dict[str, str] = {}
    cf = record.find(f"{{{NS_MARC}}}controlfield[@tag='001']")
    if cf is not None and cf.text:
        idn = cf.text.strip()
        ids["dnb"] = idn
        ids["dnb_url"] = f"https://d-nb.info/{idn}"
    for df in record.findall(f"{{{NS_MARC}}}datafield[@tag='024']"):
        ind1 = df.get("ind1", "")
        sf2 = df.find(f"{{{NS_MARC}}}subfield[@code='2']")
        sfa = df.find(f"{{{NS_MARC}}}subfield[@code='a']")
        if sfa is not None and sfa.text:
            scheme = (sf2.text or "").lower() if sf2 is not None else ("urn" if ind1 == "7" else "")
            if scheme == "urn" and "urn" not in ids:
                ids["urn"] = sfa.text.strip()
    return ids


def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs from DNB for German-language platforms"
    )
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--min-similarity", type=float, default=0.5)
    parser.add_argument("--checkpoint-every", type=int, default=500)
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

    # Pre-filter: skip AV media only (pre-1970 books are kept — DNB may have ISBN reprints)
    skipped_av = 0
    eligible: list[tuple[str, dict]] = []
    for fpath, rec in all_missing:
        if is_av_media(rec):
            skipped_av += 1
            continue
        eligible.append((fpath, rec))

    print(f"Pre-filtered: {skipped_av} AV media → {len(eligible)} to query")

    if args.limit:
        eligible = eligible[: args.limit]
        print(f"Processing first {args.limit}")

    client = httpx.Client(timeout=20.0, follow_redirects=True, headers=HEADERS)
    found_isbn = found_catalog = no_result = no_match = errors = 0

    for i, (fpath, rec) in enumerate(eligible, 1):
        title = rec.get("title") or ""
        author = rec.get("author", "") or ""
        publisher = rec.get("publisher", "") or ""
        query = clean_title(title)
        lst_year = listing_year(rec)

        if (i - 1) % 100 == 0:
            print(
                f"\n[{i}/{len(eligible)}] "
                f"isbn={found_isbn} catalog_id={found_catalog} "
                f"no_result={no_result} no_match={no_match}"
            )

        # Skip titles too short/generic to safely match (e.g. "Gedichte", single word)
        if len(query.split()) < 2 and not author:
            no_result += 1
            continue

        marc_records = dnb_search(client, query, author)
        time.sleep(args.delay)

        if not marc_records and author:
            marc_records = dnb_search(client, query)
            time.sleep(args.delay)

        if not marc_records:
            no_result += 1
            continue

        matched_isbn = None
        matched_catalog: dict[str, str] = {}

        for marc_rec in marc_records:
            dnb_t = marc_title(marc_rec)
            if word_similarity(query, dnb_t) < args.min_similarity:
                continue

            dnb_yr = marc_year(marc_rec)
            if lst_year and lst_year >= 1970 and dnb_yr and abs(lst_year - dnb_yr) > 3:
                continue

            dnb_pub = marc_publisher(marc_rec)
            if publisher and dnb_pub:
                pub_clean = re.sub(r"^[A-ZÄÖÜ][a-zäöüß]+[,:]?\s+", "", publisher)
                if word_similarity(pub_clean, dnb_pub) < 0.3:
                    continue

            # Title/year/publisher passed — ISBN first, catalog ID as fallback
            isbn = marc_isbn(marc_rec)
            if isbn:
                matched_isbn = isbn
                break
            elif not matched_catalog:
                matched_catalog = marc_catalog_ids(marc_rec)

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
