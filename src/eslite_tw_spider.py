import argparse
import random
import re
import time
from urllib.parse import urljoin

import httpx

from base_spider import BaseSpider
from models import BookListing


class EsliteTwSpider(BaseSpider):
    """Eslite Online Taiwan JSON search spider."""

    SEARCH_URL = "https://athena.eslite.com/api/v2/search"
    BASE_URL = "https://www.eslite.com"
    HEADERS = {
        "Accept": "application/json",
        "Accept-Language": "zh-TW,zh;q=0.9,en;q=0.8",
        "User-Agent": (
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/135.0.0.0 Safari/537.36"
        ),
    }

    def __init__(self, limit_pages: int = 1, limit_items: int = 50, query: str | None = None):
        super().__init__(platform_name="Eslite Online", territory="Taiwan")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.query = query
        self.client = httpx.Client(
            timeout=httpx.Timeout(20.0, connect=8.0, read=15.0),
            follow_redirects=True,
            headers=self.HEADERS,
        )

    def _get_robust_response(self, url: str, params: dict | None = None, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                headers = self.HEADERS.copy()
                headers["User-Agent"] = random.choice([
                    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15",
                    "Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0"
                ])
                resp = self.client.get(url, params=params, headers=headers)
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
        self.logger.info("Starting Eslite Online Taiwan API harvest.")
        try:
            queries = [self.query] if self.query else ("9789573336058", "Harry Potter", "村上春樹")
            for query in queries:
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break
                self._search(query)
        finally:
            self.client.close()
        self.logger.info("Finished Eslite Online. Scraped %s items.", self.items_scraped)

    def _search(self, query: str):
        response = self._get_robust_response(self.SEARCH_URL, params={"q": query})
        if not response or response.status_code == 404:
            return
        response.raise_for_status()
        payload = response.json()
        for hit in payload.get("hits", {}).get("hit", []) or []:
            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                break
            fields = hit.get("fields") or {}
            if fields.get("is_book") == "no":
                continue
            listing = self._listing_from_fields(hit, fields)
            if listing:
                self.save_item(listing)

    def _listing_from_fields(self, hit: dict, fields: dict) -> BookListing | None:
        title = fields.get("name")
        raw_url = fields.get("url")
        if not title or not raw_url:
            return None

        price, price_currency = self._price_info(fields)
        publisher = self._first(fields.get("manufacturer"))
        pub_date = self._publication_date(fields.get("manufacturer_date"))
        source_id = fields.get("eslite_sn") or fields.get("isbn") or fields.get("ean") or hit.get("id")
        item_url = urljoin(self.BASE_URL, raw_url)

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=self._clean_title(title),
            author=", ".join(fields.get("author") or []) or None,
            isbn=fields.get("isbn") or fields.get("ean"),
            publisher=publisher,
            publication_year=pub_date,
            category=self._product_type(title, fields),
            condition="New",
            price=price,
            price_currency=price_currency,
            listing_url=item_url,
            seller_comments=f"Eslite source id: {source_id}" if source_id else None,
        )

    def _price_info(self, fields: dict) -> tuple[str | None, str | None]:
        raw = fields.get("final_price")
        if not raw:
            return None, None
        amount = re.sub(r"[^\d.]", "", str(raw))
        if amount:
            try:
                return f"{float(amount):.2f}", "TWD"
            except ValueError:
                return amount, "TWD"
        return None, None

    def _publication_date(self, value: str | None) -> str | None:
        if not value:
            return None
        match = re.search(r"(\d{2})/(\d{2})/(\d{4})", value)
        if match:
            month, day, year = match.groups()
            return f"{year}-{month}-{day}"
        return value

    def _first(self, value):
        if isinstance(value, list) and value:
            return value[0]
        return value if isinstance(value, str) else None

    def _clean_title(self, value: str) -> str:
        return re.sub(r"\s+", " ", value).strip()

    def _product_type(self, title: str, fields: dict) -> str:
        explicit = fields.get("product_type") or fields.get("category")
        if explicit:
            return str(explicit)
        if re.search(r"(^\s*(?:【|\[)\s*電子書\s*(?:】|\]))|([（(]\s*電子書\s*[）)]\s*$)", title):
            return "電子書"
        return "中文書"


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Eslite Online Taiwan API spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=50)
    parser.add_argument("--query", type=str, default=None)
    args, _ = parser.parse_known_args()
    EsliteTwSpider(limit_pages=args.limit_pages, limit_items=args.limit_items, query=args.query).run()
