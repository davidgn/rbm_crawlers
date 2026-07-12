"""
Alib.ru used/antiquarian book marketplace spider (Russia).

Architecture:
  1. For each of the 15 top-level thematic categories (tanart, tandet, …)
     fetch sub-category codes from /tip2tip.php4?findword=TOPCAT.
  2. For each sub-category, paginate:
       Page 1:  /TOPCAT.phtml?word2=SUBCODE
       Page N:  /razdel.php4?n9=N&all=TOTAL&sortby=3&findword=TOPCAT&word2=SUBCODE
     at 60 books per page.
  3. Parse each <p> entry inline — title, author, price, year, ISBN (when present).

Total listings: ~3.28M as of 2026-05. Most are pre-ISBN Soviet-era books;
modern books (post-1970) more likely to carry ISBNs.

Pages are windows-1251 encoded.

Run:
  python3 alib_ru_spider.py [--limit N] [--delay SECS] [--category CODE]
                            [--top-category TOPCAT]
"""

import argparse
import json
import logging
import random
import re
import sys
import time
from pathlib import Path

import httpx
from bs4 import BeautifulSoup

from models import BookListing

sys.stdout.reconfigure(line_buffering=True)
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(name)s: %(message)s",
)
log = logging.getLogger("AlibRuSpider")

BASE_URL = "https://www.alib.ru"

TOP_LEVEL_CATEGORIES = [
    "tanart",    # Art / изобразительное искусство
    "tandet",    # Children's / детская литература
    "tandokum",  # Documents / документальная проза
    "tandr",     # Drama / драматургия
    "tangeo",    # Geography / география, путешествия
    "tangl",     # Linguistics / языкознание
    "tanist",    # History / история
    "tanlit",    # Literary criticism / литературоведение
    "tanotkr",   # Discovery / открытия, изобретения
    "tanpaper",  # Periodicals / периодика
    "tanper",    # Translations / переводная литература
    "tanpoem",   # Poetry / поэзия
    "tanprom",   # Industry / промышленность, техника
    "tanproz",   # Prose / художественная проза
    "tanvoina",  # War / военная тематика
]

HEADERS = {
    "Accept-Language": "ru-RU,ru;q=0.9,en;q=0.8",
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/124.0.0.0 Safari/537.36"
    ),
}

DATA_DIR = Path(__file__).parent / "data"
OUTPUT_FILE = DATA_DIR / "alib_ru_listings.jsonl"

PAGE_SIZE = 60


def _get_robust_response(client: httpx.Client, url: str, max_retries: int = 3) -> bytes | None:
    for attempt in range(max_retries):
        try:
            headers = HEADERS.copy()
            headers["User-Agent"] = random.choice([
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15",
                "Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0"
            ])
            r = client.get(url, headers=headers, timeout=30.0)
            if r.status_code in [403, 429, 500, 502, 503, 504]:
                log.warning("Got status %d for %s. Retrying (%d/%d)...", r.status_code, url, attempt + 1, max_retries)
                time.sleep(2 ** attempt)
                continue
            if r.status_code == 200 and len(r.content) > 500:
                return r.content
            return None
        except Exception as exc:
            log.warning("GET %s failed: %s. Retrying (%d/%d)...", url, exc, attempt + 1, max_retries)
            time.sleep(2 ** attempt)
    return None


def _get(client: httpx.Client, url: str) -> bytes | None:
    return _get_robust_response(client, url)


def _decode(data: bytes) -> str:
    return data.decode("windows-1251", errors="replace")


def fetch_subcategories(client: httpx.Client, top_cat: str) -> list[str]:
    """Return sub-category codes for one top-level category."""
    data = _get(client, f"{BASE_URL}/tip2tip.php4?findword={top_cat}")
    if not data:
        return []
    html = _decode(data)
    soup = BeautifulSoup(html, "html.parser")
    codes: list[str] = []
    seen: set[str] = set()
    for a in soup.find_all("a", href=True):
        h = str(a["href"])
        m = re.search(r"word2=(\w+)", h)
        if m and m.group(1) not in seen:
            seen.add(m.group(1))
            codes.append(m.group(1))
    log.info("Top-cat %s: %d sub-categories", top_cat, len(codes))
    return codes


def fetch_all_categories(client: httpx.Client) -> list[tuple[str, str]]:
    """Return (top_cat, sub_code) pairs across all 15 top-level categories."""
    pairs: list[tuple[str, str]] = []
    for top_cat in TOP_LEVEL_CATEGORIES:
        for sub_code in fetch_subcategories(client, top_cat):
            pairs.append((top_cat, sub_code))
    log.info("Total sub-categories to crawl: %d", len(pairs))
    return pairs


def parse_book_total(html: str) -> int:
    """Extract total book count from pagination URL in the page."""
    m = re.search(r"razdel\.php4\?n9=\d+&(?:amp;)?all=(\d+)", html)
    return int(m.group(1)) if m else 0


def _extract_isbn(text: str) -> str | None:
    m = re.search(r"ISBN[:\s]+([\d\-Xx]{10,17})", text, re.I)
    if not m:
        return None
    raw = re.sub(r"[-\s]", "", m.group(1)).upper()
    if len(raw) in (10, 13) and raw[:9].isdigit():
        return raw
    return None


def _extract_price(text: str) -> str | None:
    m = re.search(r"Цена:\s*([\d\s]+)\s*руб", text)
    if m:
        rub = m.group(1).strip().replace(" ", "")
        return f"{float(rub):.2f}" if rub.isdigit() else None
    return None


def _extract_year(text: str) -> str | None:
    m = re.search(r"\b(1[89]\d\d|20[012]\d)г\.", text)
    return m.group(1) if m else None


def parse_entries(html: str) -> list[dict]:
    """Parse book entries from a category listing page."""
    soup = BeautifulSoup(html, "html.parser")
    records = []

    for p in soup.find_all("p"):
        text = p.get_text(" ", strip=True)
        if "руб" not in text:
            continue

        b = p.find("b")
        title_raw = b.get_text(" ", strip=True) if b else ""
        if not title_raw:
            title_raw = text[:200]

        title = re.sub(r"^[*\",\s]+|[*\",\s]+$", "", title_raw).strip() or None

        author: str | None = None
        au_m = re.match(
            r"^([А-ЯЁ][а-яёА-ЯЁ]+\s+[А-ЯЁ]\.[А-ЯЁ]?\.[,\s]?)", text
        )
        if au_m:
            author = au_m.group(1).strip().rstrip(",")

        isbn = _extract_isbn(text)
        price = _extract_price(text)
        year = _extract_year(text)

        seller_link = p.find("a", href=lambda h: h and "bs.php4" in str(h))
        seller_id = None
        if seller_link:
            sm = re.search(r"bs=([^&\"]+)", str(seller_link.get("href", "")))
            if sm:
                seller_id = sm.group(1)

        book_link = p.find("a", href=lambda h: h and "5_1_" in str(h))
        listing_url: str | None = None
        if book_link:
            href = str(book_link.get("href", ""))
            listing_url = href if href.startswith("http") else f"https:{href}" if href.startswith("//") else f"{BASE_URL}/{href.lstrip('/')}"
        elif seller_id:
            listing_url = f"{BASE_URL}/findp.php4?bsonly={seller_id}"

        if not title and not isbn:
            continue

        listing = BookListing(
            territory="Russia",
            platform="Alib.ru",
            seller_id=seller_id,
            title=title or "Unknown Title",
            author=author,
            isbn=isbn,
            publisher=None,
            publication_year=year,
            edition=None,
            language="ru",
            pages=None,
            binding=None,
            dimensions=None,
            category=None,
            condition=None,
            price=price,
            price_currency="RUB" if price else None,
            listing_url=listing_url or BASE_URL,
            seller_comments=None,
        )
        records.append(listing.to_dict())

    return records


def crawl_category(
    client: httpx.Client,
    out_fh,
    top_cat: str,
    category_code: str,
    seen: set[str],
    delay: float,
    limit: int,
    total_written: list[int],
) -> None:
    url = f"{BASE_URL}/{top_cat}.phtml?word2={category_code}"
    data = _get(client, url)
    if not data:
        log.warning("Category %s/%s: failed to fetch page 1", top_cat, category_code)
        return

    html = _decode(data)
    total_books = parse_book_total(html)
    log.info("Category %s/%s: %d books", top_cat, category_code, total_books)

    offsets = list(range(PAGE_SIZE, total_books, PAGE_SIZE))

    _write_page(out_fh, html, seen, total_written)
    if limit and total_written[0] >= limit:
        return
    if offsets:
        time.sleep(delay)

    for n9 in offsets:
        page_url = (
            f"{BASE_URL}/razdel.php4?n9={n9}&all={total_books}"
            f"&sortby=3&findword={top_cat}&word2={category_code}"
        )
        page_data = _get(client, page_url)
        if not page_data:
            log.warning("Category %s/%s n9=%d: failed", top_cat, category_code, n9)
            break
        page_html = _decode(page_data)
        _write_page(out_fh, page_html, seen, total_written)
        if limit and total_written[0] >= limit:
            return
        out_fh.flush()
        time.sleep(delay)

    log.info(
        "Category %s/%s done. Total written so far: %d",
        top_cat, category_code, total_written[0],
    )


def _write_page(
    out_fh,
    html: str,
    seen: set[str],
    total_written: list[int],
) -> None:
    records = parse_entries(html)
    new_count = 0
    for rec in records:
        key = f"{rec.get('title','')}::{rec.get('seller_id','')}::{rec.get('listing_url','')}"
        if key in seen:
            continue
        seen.add(key)
        out_fh.write(json.dumps(rec, ensure_ascii=False) + "\n")
        new_count += 1
        total_written[0] += 1
    log.debug("Page: %d entries, %d new", len(records), new_count)


def load_seen_keys() -> set[str]:
    seen: set[str] = set()
    if not OUTPUT_FILE.exists():
        return seen
    with open(OUTPUT_FILE, encoding="utf-8") as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            try:
                rec = json.loads(line)
                key = f"{rec.get('title','')}::{rec.get('seller_id','')}::{rec.get('listing_url','')}"
                seen.add(key)
            except json.JSONDecodeError:
                pass
    return seen


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=0, help="Max listings (0=no limit)")
    ap.add_argument("--delay", type=float, default=1.0, help="Delay between pages (seconds)")
    ap.add_argument("--category", type=str, default="",
                    help="Single sub-category code to crawl (requires --top-category)")
    ap.add_argument("--top-category", type=str, default="",
                    help="Single top-level category to crawl (e.g. tanproz)")
    ap.add_argument("--limit-pages", type=int, default=None)
    ap.add_argument("--limit-items", type=int, default=None)
    ap.add_argument("--query", type=str, default=None)
    args, _ = ap.parse_known_args()

    effective_limit = args.limit_items if args.limit_items is not None else args.limit

    DATA_DIR.mkdir(parents=True, exist_ok=True)
    seen = load_seen_keys()
    log.info("Loaded %d existing dedup keys.", len(seen))

    client = httpx.Client(follow_redirects=True)
    total_written = [0]

    if args.category and args.top_category:
        pairs: list[tuple[str, str]] = [(args.top_category, args.category)]
    elif args.top_category:
        sub_codes = fetch_subcategories(client, args.top_category)
        if not sub_codes:
            log.error("No sub-categories found for %s", args.top_category)
            return
        pairs = [(args.top_category, code) for code in sub_codes]
    else:
        pairs = fetch_all_categories(client)
        if not pairs:
            log.error("Failed to fetch category list.")
            return

    with open(OUTPUT_FILE, "a", encoding="utf-8") as out_fh:
        for top_cat, sub_code in pairs:
            crawl_category(
                client, out_fh, top_cat, sub_code, seen, args.delay, effective_limit, total_written
            )
            if effective_limit and total_written[0] >= effective_limit:
                break

    log.info("Finished. Total new listings written: %d", total_written[0])


if __name__ == "__main__":
    main()
