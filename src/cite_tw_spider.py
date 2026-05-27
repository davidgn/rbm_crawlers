import argparse
import re
from urllib.parse import urljoin, urlparse, parse_qs

import httpx
from bs4 import BeautifulSoup

from base_spider import BaseSpider
from models import BookListing


class CiteTwSpider(BaseSpider):
    """Cite Publishing / 城邦讀書花園 Taiwan search spider."""

    BASE_URL = "https://www.cite.com.tw"
    SEARCH_URL = f"{BASE_URL}/search_result"

    def __init__(self, limit_pages=1, limit_items=50):
        super().__init__(platform_name="Cite Publishing", territory="Taiwan")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = httpx.Client(
            timeout=httpx.Timeout(20.0, connect=8.0, read=15.0),
            follow_redirects=True,
            headers={
                "Accept-Language": "zh-TW,zh;q=0.9,en;q=0.8",
                "User-Agent": (
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
                    "AppleWebKit/537.36 (KHTML, like Gecko) "
                    "Chrome/135.0.0.0 Safari/537.36"
                ),
            },
        )

    def run(self):
        self.logger.info("Starting Cite Publishing Taiwan search harvest.")
        try:
            for query in ("9789573336058", "Harry Potter", "村上春樹"):
                if self.items_scraped >= self.limit_items:
                    break
                self._search(query)
        finally:
            self.client.close()
        self.logger.info("Finished Cite Publishing. Scraped %s items.", self.items_scraped)

    def _search(self, query: str):
        response = self.client.get(self.SEARCH_URL, params={"keywords": query})
        if response.status_code == 404:
            return
        response.raise_for_status()
        soup = BeautifulSoup(response.text, "html.parser")
        for item in soup.select("li.book-area-1"):
            if self.items_scraped >= self.limit_items:
                break
            listing = self._parse_item(item)
            if listing:
                self.save_item(listing)

    def _parse_item(self, item) -> BookListing | None:
        title_link = item.select_one("h2 a[href]")
        if not title_link:
            return None

        listing_url = urljoin(self.BASE_URL, title_link["href"])
        title = title_link.get("title") or title_link.get_text(" ", strip=True)
        source_id = parse_qs(urlparse(listing_url).query).get("id", [None])[0]

        meta_text = item.get_text(" ", strip=True)
        price = self._match_price(meta_text)

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=self._clean_title(title),
            author=", ".join(a.get_text(" ", strip=True) for a in item.select("a#writer")) or None,
            publisher=self._field_text(item, "出版社"),
            publication_year=self._publication_date(self._field_text(item, "出版日期")),
            category=self._field_text(item, "類型"),
            condition="New",
            price=price,
            listing_url=listing_url,
            seller_comments=f"Cite source id: {source_id}" if source_id else None,
        )

    def _field_text(self, item, label: str) -> str | None:
        text = item.get_text("\n", strip=True)
        match = re.search(rf"{re.escape(label)}[:：]\s*([^\n]+)", text)
        if not match:
            return None
        value = self._clean_title(match.group(1))
        if label == "出版日期" and re.fullmatch(r"\d{8}", value):
            return f"{value[:4]}-{value[4:6]}-{value[6:8]}"
        return value

    def _match_price(self, text: str) -> str | None:
        match = re.search(r"(?:優惠價[:：]\s*)?(?:\d+\s*折\s*)?([\d,]+)\s*元", text)
        if not match:
            return None
        return f"TWD {match.group(1).replace(',', '')}"

    def _publication_date(self, value: str | None) -> str | None:
        if not value:
            return None
        if re.fullmatch(r"\d{8}", value):
            return f"{value[:4]}-{value[4:6]}-{value[6:8]}"
        return value

    def _clean_title(self, value: str) -> str:
        value = re.sub(r"\s+", " ", value).strip()
        wrapped = re.match(r"^《(.+)》$", value)
        return wrapped.group(1) if wrapped else value


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Cite Publishing Taiwan search spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()
    CiteTwSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
