"""
OL ISBN backfill for tiki_vn records that NLV missed.

Targets records where author is Latin-script (translated/international books).
Vietnamese titles often embed the original English title words, so we:
  1. Extract pure-ASCII words from the Vietnamese title as key terms.
  2. Search OL with those key terms + author surname.
  3. Match: check if OL title words appear in our key terms (word overlap).
  4. Fall back to author-only search when key-term search returns nothing.

Run:
  python3 openlibrary_tiki_vn.py [--dry-run] [--limit N]
"""

import argparse
import json
import re
import sys
import time
from pathlib import Path

import httpx

sys.stdout.reconfigure(line_buffering=True)

DATA_FILE = Path("data/tiki_vn_listings.jsonl")
OL_SEARCH = "https://openlibrary.org/search.json"
HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0 (contact: rbm-project)",
    "Accept": "application/json",
}

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
YEAR_RE = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")
VIET_DIACRITIC_RE = re.compile(r"[àáảãạăắặằẳẵâấầẩẫậđèéẻẽẹêếềểễệìíỉĩịòóỏõọôốồổỗộơớờởỡợùúủũụưứừửữựỳýỷỹỵ]", re.I)

CLEAN_PREFIXES = re.compile(
    r"^(?:Sách\s+|"
    r"\[MIỄN PHÍ BỌC SÁCH\]\s*|"
    r"Boxset\s+|"
    r"Combo\s+[^:–-]+[–-]\s*|"
    r"Bộ\s+sách\s+)",
    re.IGNORECASE,
)
PAREN_NOISE = re.compile(r"\s*\([^)]{0,80}\)")
DASH_VIET_SUFFIX = re.compile(r"\s*[-–]\s+[A-Z][A-Za-z .,]{2,50}$")


def clean_title(title: str) -> str:
    t = CLEAN_PREFIXES.sub("", title.strip())
    t = PAREN_NOISE.sub("", t)
    t = DASH_VIET_SUFFIX.sub("", t)
    return t.strip()


def ascii_keywords(title: str) -> list[str]:
    """Extract pure-ASCII words (likely original English title words) from title."""
    words = []
    for w in re.split(r"[\s\-–]+", title):
        w = re.sub(r"[^A-Za-z0-9]", "", w)
        if len(w) >= 3 and not VIET_DIACRITIC_RE.search(w):
            words.append(w)
    return words


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
    return max(years) if years else doc.get("first_publish_year")


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


def keyword_overlap(keywords: list[str], ol_title: str) -> float:
    """Fraction of our ASCII keywords found in the OL title."""
    if not keywords:
        return 0.0
    ol_words = set(w.lower() for w in re.split(r"\W+", ol_title) if len(w) >= 3)
    kw_lower = [k.lower() for k in keywords]
    hits = sum(1 for k in kw_lower if k in ol_words)
    return hits / len(kw_lower)


def is_eligible(rec: dict) -> bool:
    if rec.get("isbn") or rec.get("catalog_ids"):
        return False
    title = rec.get("title") or ""
    author = rec.get("author") or ""
    if not title or not author:
        return False
    # Target only records with Latin-script (non-Vietnamese) author
    return not VIET_DIACRITIC_RE.search(author)


def main():
    parser = argparse.ArgumentParser(description="OL backfill for tiki_vn Latin-author residuals")
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--delay", type=float, default=0.4)
    parser.add_argument("--checkpoint-every", type=int, default=100)
    args = parser.parse_args()

    records = [
        json.loads(l) for l in DATA_FILE.read_text(encoding="utf-8").splitlines() if l.strip()
    ]
    eligible = [r for r in records if is_eligible(r)]
    print(f"tiki_vn: {len(records)} total, {len(eligible)} eligible (Latin-author, no ISBN)")

    if args.limit:
        eligible = eligible[: args.limit]
        print(f"Processing first {args.limit}")

    client = httpx.Client(timeout=20.0, follow_redirects=True, headers=HEADERS)
    found_isbn = found_catalog = no_result = no_match = 0

    for i, rec in enumerate(eligible, 1):
        raw_title = rec.get("title") or ""
        author = rec.get("author") or ""
        lst_year = listing_year(rec)

        if (i - 1) % 100 == 0:
            print(f"[{i}/{len(eligible)}] isbn={found_isbn} catalog={found_catalog} "
                  f"no_result={no_result} no_match={no_match}")

        title_clean = clean_title(raw_title)
        keywords = ascii_keywords(title_clean)
        author_surname = author.split()[-1] if author.split() else ""

        # Primary: keywords + author surname
        if keywords and author_surname:
            query = " ".join(keywords[:4]) + " " + author_surname
        elif author_surname:
            query = author
        else:
            no_result += 1
            continue

        docs = ol_search(client, query)
        time.sleep(args.delay)

        # Fallback: author only (catches books where Vietnamese title has no ASCII words)
        if not docs and author_surname:
            docs = ol_search(client, author)
            time.sleep(args.delay)

        if not docs:
            no_result += 1
            continue

        matched_isbn = None
        matched_catalog: dict[str, str] = {}

        for doc in docs:
            ol_title = doc.get("title") or ""
            # Require keyword overlap OR use full author name for author-only searches
            overlap = keyword_overlap(keywords, ol_title) if keywords else 0.0
            # Accept if either title keywords overlap well, or we matched via author and
            # OL author contains our author's surname
            ol_authors = " ".join(doc.get("author_name") or []).lower()
            author_match = author_surname.lower() in ol_authors if author_surname else False

            if overlap < 0.4 and not (author_match and overlap >= 0.2):
                continue

            doc_year = ol_year(doc)
            if lst_year and doc_year and abs(lst_year - doc_year) > 5:
                continue

            isbn = isbn13_from_list(doc.get("isbn") or [])
            if isbn:
                matched_isbn = isbn
                break
            if not matched_catalog:
                key = doc.get("key", "")
                if key:
                    matched_catalog = {"openlibrary": key,
                                       "openlibrary_url": f"https://openlibrary.org{key}"}

        if matched_isbn:
            rec["isbn"] = matched_isbn
            found_isbn += 1
            if found_isbn <= 20:
                print(f"  {raw_title[:50]} → {matched_isbn}")
        elif matched_catalog:
            existing = rec.get("catalog_ids") or {}
            existing.update(matched_catalog)
            rec["catalog_ids"] = existing
            found_catalog += 1
        else:
            no_match += 1

        if not args.dry_run and args.checkpoint_every and i % args.checkpoint_every == 0 and (found_isbn + found_catalog) > 0:
            tmp = DATA_FILE.with_suffix(".jsonl.tmp")
            with tmp.open("w", encoding="utf-8") as fh:
                for r in records:
                    fh.write(json.dumps(r, ensure_ascii=False) + "\n")
            tmp.replace(DATA_FILE)
            print(f"  [checkpoint] saved at record {i}")

    print(f"\nDone. isbn={found_isbn} catalog={found_catalog} "
          f"no_result={no_result} no_match={no_match}")

    if not args.dry_run and (found_isbn + found_catalog) > 0:
        tmp = DATA_FILE.with_suffix(".jsonl.tmp")
        with tmp.open("w", encoding="utf-8") as fh:
            for r in records:
                fh.write(json.dumps(r, ensure_ascii=False) + "\n")
        tmp.replace(DATA_FILE)
        print(f"Written {len(records)} records to {DATA_FILE}")

    client.close()


if __name__ == "__main__":
    main()
