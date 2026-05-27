import argparse
import re
from urllib.parse import urljoin

import httpx
from bs4 import BeautifulSoup

from models import BookListing
from base_spider import BaseSpider

class BooksTwSpider(BaseSpider):
    SEARCH_URL = "https://search.books.com.tw/search/query/cat/all/sort/1/v/0/page/{page}/spell/3/key/{query}"

    def __init__(self, limit_pages=50, limit_items=50):
        super().__init__(platform_name="Books.com.tw", territory="Taiwan")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.base_url = "https://www.books.com.tw"
        self.client = httpx.Client(
            timeout=httpx.Timeout(25.0, connect=8.0, read=18.0),
            follow_redirects=True,
            headers={
                "Accept-Language": "zh-TW,zh;q=0.9,en;q=0.8",
                "User-Agent": (
                    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                    "AppleWebKit/537.36 (KHTML, like Gecko) "
                    "Chrome/124.0.0.0 Safari/537.36"
                ),
            },
        )

    def run(self):
        self.logger.info("Starting Books.com.tw search harvest. Limit: %s pages.", self.limit_pages)
        try:
            for query in ("9789573336058", "Harry Potter", "村上春樹"):
                for page in range(1, self.limit_pages + 1):
                    if self.items_scraped >= self.limit_items:
                        return
                    self._search_page(query, page)
        finally:
            self.client.close()
        self.logger.info("Finished Books.com.tw. Scraped %s items.", self.items_scraped)

    def _search_page(self, query: str, page: int):
        url = self.SEARCH_URL.format(page=page, query=query)
        self.logger.info("Fetching search page: %s", url)
        response = self.client.get(url)
        if response.status_code == 404:
            return
        response.raise_for_status()
        soup = BeautifulSoup(response.text, "html.parser")
        for row in soup.select("tbody[id^='itemlist_']"):
            if self.items_scraped >= self.limit_items:
                break
            listing = self._parse_row(row)
            if listing:
                self.save_item(listing)

    def _parse_row(self, row) -> BookListing | None:
        title_link = row.select_one("h4 a[rel='mid_name'][href]") or row.select_one("h4 a[href]")
        if not title_link:
            return None

        listing_url = urljoin(self.base_url, title_link["href"])
        product_id = row.get("id", "").replace("itemlist_", "") or None
        price_node = row.select_one(f"input#itemlist_{product_id}_price") if product_id else None
        price = f"TWD {price_node.get('value')}" if price_node and price_node.get("value") else self._price(row)
        product_type = self._product_type(row)

        publisher_link = (
            row.select_one("a[href*='mid_publish']")
            or row.select_one("a[href*='sys_puballb']")
        )
        date_match = re.search(r"出版日期:\s*(\d{4}-\d{2}-\d{2})", row.get_text(" ", strip=True))

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=self._clean(title_link.get("title") or title_link.get_text(" ", strip=True)),
            author=", ".join(a.get_text(" ", strip=True) for a in row.select("a[rel='go_author']")) or None,
            publisher=publisher_link.get("title") if publisher_link and publisher_link.get("title") else None,
            publication_year=date_match.group(1) if date_match else None,
            category=product_type,
            condition="New",
            price=price,
            listing_url=listing_url,
            seller_comments=f"Books.com.tw product id: {product_id}" if product_id else None,
        )

    def _price(self, row) -> str | None:
        match = re.search(r"優惠價:\s*(?:\d+\s*折,\s*)?([\d,]+)\s*元", row.get_text(" ", strip=True))
        return f"TWD {match.group(1).replace(',', '')}" if match else None

    def _product_type(self, row) -> str | None:
        node = row.select_one("ul.list-date span")
        return self._clean(node.get_text(" ", strip=True)) if node else None

    def _clean(self, value: str) -> str:
        return re.sub(r"\s+", " ", value).strip()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    spider = BooksTwSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items or 50,
    )
    spider.run()
