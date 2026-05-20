"""
Backfill ISBNs for tiki_vn records using the National Library of Vietnam OPAC.

The NLV OPAC (opac.nlv.gov.vn) catalogues legal-deposit books published in
Vietnam.  Most Tiki books are Vietnamese-published and should be in the catalog.

Approach:
  1. Session init: GET /tim-kiem to obtain CSRF token + session cookies.
  2. Search: POST /Search with JSON body, get back HTML fragment with detail links.
  3. Detail fetch: GET /chi-tiet-tai-lieu/<slug> and parse ISBN from MARC21 020 field.
  4. Validate: fuzzy-compare NLV title against Tiki title before accepting ISBN.
  5. Write back to tiki_vn_listings.jsonl.

Run:
  python3 tiki_nlv_backfill.py [--limit N] [--dry-run]
"""

import argparse
import json
import re
import time
import unicodedata
from pathlib import Path

import httpx
from bs4 import BeautifulSoup

DEFAULT_DATA_FILE = Path("data/tiki_vn_listings.jsonl")
OPAC_BASE = "http://opac.nlv.gov.vn"
SEARCH_URL = f"{OPAC_BASE}/Search"
SESSION_URL = f"{OPAC_BASE}/tim-kiem"
HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/124.0.0.0 Safari/537.36"
    ),
    "Accept-Language": "vi-VN,vi;q=0.9,en;q=0.8",
    "Origin": OPAC_BASE,
    "Referer": SESSION_URL,
}

SACH_PREFIX = re.compile(r"^S[aá]ch\s+", re.IGNORECASE)
REPRINT_SUFFIX = re.compile(r"\s*[-–]\s*(T[aá]i\s+B[aả]n|Tập|Vol\.|#)\s*[\w.]+\s*$", re.IGNORECASE)
PAREN_NOISE = re.compile(r"\s*\([^)]{0,60}\)")  # remove (Author Name) / (Bìa Mềm) / etc.
TRAILING_NOISE = re.compile(r"\s*[-–]\s*\d+\s*\w{0,10}\s*$")  # "- 2 ph", "- T1", etc.
FREE_COVER_PREFIX = re.compile(r"^\[MIỄN PHÍ BỌC SÁCH\]\s*", re.IGNORECASE)
# Embedded non-Vietnamese author at end: "TITLE - Firstname Lastname" where name has no diacritics
_EMBEDDED_AUTHOR_RE = re.compile(r"\s*[-–]\s+([A-Z][a-zA-Z .,-]{2,60})$")
ISBN_RE = re.compile(r"97[89][- \d]{10,17}")


def normalize_isbn(raw: str) -> str:
    return re.sub(r"[^0-9]", "", raw)


def clean_title(title: str) -> str:
    t = FREE_COVER_PREFIX.sub("", title.strip())
    t = SACH_PREFIX.sub("", t)
    t = PAREN_NOISE.sub("", t)
    t = REPRINT_SUFFIX.sub("", t)
    t = TRAILING_NOISE.sub("", t)
    t = _EMBEDDED_AUTHOR_RE.sub("", t)
    return t.strip()


def viet_fold(text: str) -> str:
    """NFD decompose, strip diacritics, strip punctuation, lowercase."""
    nfd = unicodedata.normalize("NFD", text)
    ascii_only = "".join(c for c in nfd if unicodedata.category(c) != "Mn")
    cleaned = re.sub(r"[^\w\s]", " ", ascii_only)
    return cleaned.lower().strip()


def title_similarity(a: str, b: str) -> float:
    """Word-overlap similarity between two titles (Jaccard on word sets)."""
    wa = set(w for w in viet_fold(a).split() if len(w) > 1)
    wb = set(w for w in viet_fold(b).split() if len(w) > 1)
    if not wa or not wb:
        return 0.0
    return len(wa & wb) / max(len(wa), len(wb))


class NLVSession:
    def __init__(self, client: httpx.Client):
        self.client = client
        self.csrf_token: str = ""
        self._request_count = 0
        self._refresh_every = 40

    def refresh(self):
        resp = self.client.get(SESSION_URL)
        soup = BeautifulSoup(resp.text, "html.parser")
        el = soup.find(id="requestVerificationToken")
        self.csrf_token = el.get("value", "") if el else ""
        self._request_count = 0
        if not self.csrf_token:
            print("  WARNING: could not obtain CSRF token")

    def search(self, title: str, author: str = "") -> list[str]:
        """Search NLV by title field and return detail-page URLs.

        NLV keyword quick search only indexes title; including author in the
        query over-constrains and breaks results.  Author is used only for
        post-search validation (see caller).
        """
        if self._request_count >= self._refresh_every or not self.csrf_token:
            self.refresh()
        links = self._do_search("quick", [["option", "ti"], ["keyword", title]])
        self._request_count += 1
        return links

    def _do_search(self, search_type: str, search_by: list) -> list[str]:
        payload = {
            "type": search_type,
            "page": 1,
            "pageSize": 3,
            "hasFacetFilter": False,
            "request": {
                "searchBy": search_by,
                "sortBy": [["year_pub", "desc"]],
                "filterBy": [],
            },
        }
        try:
            resp = self.client.post(
                SEARCH_URL,
                content=json.dumps(payload, ensure_ascii=False).encode("utf-8"),
                headers={
                    "Content-Type": "application/json; charset=utf-8",
                    "Accept": "text/html",
                    "RequestVerificationToken": self.csrf_token,
                },
            )
        except Exception as e:
            print(f"  search error: {e}")
            return []

        soup = BeautifulSoup(resp.text, "html.parser")
        seen: set[str] = set()
        links: list[str] = []
        for a in soup.find_all("a", href=True):
            href = a["href"]
            if "/chi-tiet-tai-lieu/" in href and "focusRegCir" not in href:
                full = OPAC_BASE + href if href.startswith("/") else href
                if full not in seen:
                    seen.add(full)
                    links.append(full)
        return links

    def get_isbn(self, detail_url: str) -> tuple[str | None, str | None, str | None]:
        """Fetch detail page, return (isbn, nlv_title, nlv_author)."""
        try:
            resp = self.client.get(detail_url)
        except Exception as e:
            print(f"  detail fetch error: {e}")
            return None, None, None

        soup = BeautifulSoup(resp.text, "html.parser")
        text = soup.get_text(separator="\n", strip=True)

        # Extract ISBN from MARC 020 field (appears as e.g. "978-604-2-15503-8")
        raw_isbns = ISBN_RE.findall(text)
        isbn = None
        for raw in raw_isbns:
            candidate = normalize_isbn(raw)
            if len(candidate) == 13 and candidate.startswith("97"):
                isbn = candidate
                break

        # Extract title from og:title (most reliable; page <title> is same)
        og = soup.find("meta", property="og:title")
        nlv_title = og.get("content", "").strip() if og else None
        if not nlv_title:
            t = soup.find("title")
            nlv_title = t.get_text(strip=True) if t else None

        # Extract author from detail-block (appears after "Tác giả:")
        nlv_author = None
        detail = soup.find(class_="detail-block")
        if detail:
            dtext = detail.get_text(separator="\n", strip=True)
            m = re.search(r"Tác giả:\s*(.+)", dtext)
            if m:
                nlv_author = m.group(1).split("\n")[0].strip()

        return isbn, nlv_title, nlv_author


def main():
    parser = argparse.ArgumentParser(description="Backfill Tiki/Oreka ISBNs from NLV OPAC")
    parser.add_argument("--data-file", type=Path, default=DEFAULT_DATA_FILE)
    parser.add_argument("--limit", type=int, default=0, help="Max records to process (0=all)")
    parser.add_argument("--dry-run", action="store_true", help="Don't write changes")
    parser.add_argument("--checkpoint-every", type=int, default=100)
    parser.add_argument("--min-similarity", type=float, default=0.5,
                        help="Minimum title similarity to accept a match (default 0.5)")
    args = parser.parse_args()
    DATA_FILE = args.data_file

    # Load existing records
    records: list[dict] = []
    if DATA_FILE.exists():
        with DATA_FILE.open(encoding="utf-8") as fh:
            for line in fh:
                line = line.strip()
                if line:
                    try:
                        records.append(json.loads(line))
                    except Exception:
                        pass

    missing = [r for r in records if not r.get("isbn") and r.get("title")]
    print(f"{DATA_FILE.name}: {len(records)} total, {len(missing)} missing ISBN")

    if args.limit:
        missing = missing[: args.limit]
        print(f"Processing first {args.limit}")

    client = httpx.Client(
        timeout=20.0,
        follow_redirects=True,
        headers=HEADERS,
    )
    session = NLVSession(client)
    session.refresh()

    found = 0
    no_result = 0
    no_match = 0
    errors = 0

    for i, rec in enumerate(missing, 1):
        tiki_title = rec.get("title", "")
        query = clean_title(tiki_title)
        # NLV quick search is title-field only; author in query breaks results.
        # Use title-only for search, author for post-search validation.
        author = rec.get("author", "") or ""

        if (i - 1) % 50 == 0:
            print(f"\n[{i}/{len(missing)}] found={found} no_result={no_result} no_match={no_match}")

        detail_links = session.search(query, author)
        if not detail_links:
            no_result += 1
            time.sleep(0.6)
            continue

        matched_isbn = None
        for url in detail_links[:2]:
            isbn, nlv_title, nlv_author = session.get_isbn(url)
            if not isbn:
                continue
            title_sim = title_similarity(query, nlv_title or "")
            # Accept if title similarity passes threshold
            if title_sim >= args.min_similarity:
                # Additionally check author if both sides have it
                if author and nlv_author:
                    author_sim = title_similarity(author, nlv_author)
                    if author_sim < 0.3:
                        continue  # wrong author
                matched_isbn = isbn
                break

        if matched_isbn:
            rec["isbn"] = matched_isbn
            found += 1
        else:
            no_match += 1

        time.sleep(0.7)

        if not args.dry_run and args.checkpoint_every and i % args.checkpoint_every == 0 and found > 0:
            tmp = DATA_FILE.with_suffix(".jsonl.tmp")
            with tmp.open("w", encoding="utf-8") as fh:
                for r in records:
                    fh.write(json.dumps(r, ensure_ascii=False) + "\n")
            tmp.replace(DATA_FILE)
            print(f"  [checkpoint] saved at record {i} (found={found})")

    print(f"\nDone. Found {found} ISBNs, {no_result} no results, {no_match} no match, {errors} errors")

    if not args.dry_run and found > 0:
        tmp = DATA_FILE.with_suffix(".jsonl.tmp")
        with tmp.open("w", encoding="utf-8") as fh:
            for r in records:
                fh.write(json.dumps(r, ensure_ascii=False) + "\n")
        tmp.replace(DATA_FILE)
        print(f"Written {len(records)} records to {DATA_FILE}")

    client.close()


if __name__ == "__main__":
    main()
