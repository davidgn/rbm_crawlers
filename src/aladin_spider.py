import argparse
import random
import re
import time
from types import SimpleNamespace

import httpx
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from isbn_utils import extract_isbn
from models import BookListing


CONFIG = SimpleNamespace(platform_name="Aladin", territory="South Korea")


class AladinSpider(BaseSpider):
    """
    알라딘 / Aladin (aladin.co.kr) — South Korea main-universe used-book marketplace.

    Aladin is South Korea's premier used-book marketplace.  The 중고샵
    (used-book shop) has its own dedicated listing surface separate from new
    books.  httpx works for the listing pages (server-rendered HTML); detail
    pages are also server-rendered.

    Listing URL:
      https://www.aladin.co.kr/shop/usedshop/wuseditemall.aspx
        ?SearchTarget=usedBook&CategoryId=0&start=N   (N = 0, 50, 100, …)

    Detail URL pattern:
      https://www.aladin.co.kr/shop/usedshop/wuseditemdetail.aspx?ItemId=XXXXX

    Category prioritisation: foreign/English (CategoryId=74) first,
    then all categories (CategoryId=0).
    """

    BASE_URL   = "https://www.aladin.co.kr"
    LIST_URL   = (
        "https://www.aladin.co.kr/shop/usedshop/wuseditemall.aspx"
        "?SearchTarget=usedBook&CategoryId={cat_id}&start={start}&SortOrder=1"
    )
    PAGE_SIZE  = 50   # items per page on the listing surface

    CATEGORIES = [
        {"name": "Foreign/English", "cat_id": 74},
        {"name": "All",             "cat_id": 0},
        {"name": "Humanities",      "cat_id": 1},
        {"name": "Science/Tech",    "cat_id": 4},
    ]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "ko-KR,ko;q=0.9,en;q=0.8",
        "Referer": "https://www.aladin.co.kr/",
    }

    def __init__(self, limit_pages=100, limit_items=50):
        super().__init__(platform_name="Aladin", territory="South Korea")
        self.limit_pages = limit_pages or 100
        self.limit_items = limit_items or 50
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def _get_robust_response(self, url: str, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                headers = self.HEADERS.copy()
                headers["User-Agent"] = random.choice([
                    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15"
                ])
                resp = self.client.get(url, headers=headers)
                if resp.status_code in [403, 429, 500, 502, 503, 504]:
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

    def run(self):
        self.logger.info(
            f"Starting Aladin harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            for cat in self.CATEGORIES:
                if self.items_scraped >= self.limit_items:
                    break
                self.logger.info(f"=== Category: {cat['name']} (id={cat['cat_id']}) ===")
                for pg_num in range(self.limit_pages):
                    if self.items_scraped >= self.limit_items:
                        break
                    start = pg_num * self.PAGE_SIZE
                    url = self.LIST_URL.format(cat_id=cat["cat_id"], start=start)
                    self.logger.info(f"Listing page {pg_num + 1}: {url}")

                    resp = self._get_robust_response(url)
                    if not resp or resp.status_code != 200:
                        self.logger.error(f"Failed to fetch listing page {url}")
                        break

                    soup = BeautifulSoup(resp.text, "html.parser")
                    detail_links = self._extract_detail_links(soup, seen)

                    if not detail_links:
                        self.logger.info(f"No new listings at start={start} — done with category.")
                        break

                    self.logger.info(f"Found {len(detail_links)} new listings.")
                    for link in detail_links:
                        if self.items_scraped >= self.limit_items:
                            return
                        seen.add(link)
                        self._harvest_item(link)
                        time.sleep(0.6)

        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    def _extract_detail_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = a["href"]
            if "wuseditemdetail" in href or "ItemId=" in href:
                full = href if href.startswith("http") else self.BASE_URL + href
                if full not in seen:
                    links.append(full)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        m = re.search(r"ItemId=(\d+)", url)
        item_id = m.group(1) if m else re.sub(r"[^a-zA-Z0-9_-]", "_", url)[-60:]

        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response for {url}")
                return

            self.cache_html(item_id, resp.text, url=url)

            soup = BeautifulSoup(resp.text, "html.parser")
            h1 = soup.find("h1") or soup.find("div", class_=re.compile(r"title|book_name", re.I))
            title = self._title_from_soup(soup) or (h1.get_text(" ", strip=True) if h1 else None) or "Cached Item"

            price_val = None
            price_currency_val = None
            price_node = soup.select_one("span.p_price, span.EbookPrices, .p_price, span.EbookNum")
            if price_node:
                match = re.search(r"[\d,]+", price_node.get_text())
                if match:
                    num = match.group(0).replace(",", "")
                    if num.isdigit() and int(num) > 0:
                        price_val = f"{float(num):.2f}"
                        price_currency_val = "KRW"
            if not price_val:
                match = re.search(r"([\d,]{3,})\s*원", soup.get_text())
                if match:
                    price_val = f"{float(match.group(1).replace(',', '')):.2f}"
                    price_currency_val = "KRW"

            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                isbn=extract_isbn(soup),
                price=price_val,
                price_currency=price_currency_val,
                listing_url=url,
                condition="Cached for AI extraction",
            ))
        except Exception as e:
            self.logger.error(f"Error harvesting {url}: {e}")

    def _title_from_soup(self, soup: BeautifulSoup) -> str | None:
        for selector in ("meta[property='og:title']", "meta[name='title']", "title"):
            node = soup.select_one(selector)
            if not node:
                continue
            text = node.get("content") if node.name == "meta" else node.get_text(" ", strip=True)
            if text:
                return re.sub(r"\s+", " ", text).strip()
        return None


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Aladin 알라딘 (South Korea) cache-first spider")
    parser.add_argument("--limit", type=int, default=100,
                        help="Max listing pages per category (default: 100)")
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int, default=50)
    parser.add_argument("--query", type=str, default=None)
    args, _ = parser.parse_known_args()
    AladinSpider(limit_pages=args.limit_pages or args.limit, limit_items=args.limit_items).run()
