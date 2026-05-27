import argparse
import re
import time
from urllib.parse import urljoin

import httpx
from bs4 import BeautifulSoup

from base_spider import BaseSpider
from models import BookListing


class BeninMarketPlaceSpider(BaseSpider):
    BASE_URL = "https://beninmarketplace.bj"
    SEARCH_PATHS = ("products?search=livre", "products?search=roman")
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "fr-BJ,fr;q=0.9,en;q=0.8",
    }

    def __init__(self, limit_pages: int = 1, limit_items: int = 50):
        super().__init__(platform_name="BeninMarketPlace Livres", territory="Benin")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        timeout = httpx.Timeout(15.0, connect=5.0, read=10.0)
        self.client = httpx.Client(timeout=timeout, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        self.logger.info(
            "Starting BeninMarketPlace Livres harvest. limit_pages=%s limit_items=%s",
            self.limit_pages,
            self.limit_items,
        )
        attempted = 0
        try:
            for path in self.SEARCH_PATHS[: self.limit_pages]:
                if attempted >= self.limit_items:
                    break
                url = urljoin(self.BASE_URL + "/", path)
                html = self._fetch(url)
                if not html:
                    continue
                self.cache_html(f"index_{self._safe_id(url)}", html, url=url)
                soup = BeautifulSoup(html, "html.parser")
                for card in soup.select(".product-item"):
                    if attempted >= self.limit_items:
                        break
                    listing = self._listing_from_card(card)
                    if not listing:
                        continue
                    attempted += 1
                    self._enrich_from_detail(listing)
                    self.save_item(listing)
                    time.sleep(0.5)
        finally:
            self.client.close()
        self.logger.info("Finished BeninMarketPlace Livres. Scraped %s items.", self.items_scraped)

    def _fetch(self, url: str) -> str | None:
        try:
            response = self.client.get(url)
        except Exception as exc:
            self.logger.debug("Fetch failed for %s: %s", url, exc)
            return None
        if response.status_code != 200 or len(response.text) < 500:
            return None
        return response.text

    def _listing_from_card(self, card) -> BookListing | None:
        title_node = card.select_one(".product-title a[href]")
        if not title_node:
            return None
        title = title_node.get_text(" ", strip=True)
        listing_url = urljoin(self.BASE_URL, title_node["href"])
        seller_node = card.select_one(".product-user a")
        price_node = card.select_one(".price")
        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            seller_id=seller_node.get_text(" ", strip=True) if seller_node else None,
            title=title,
            price=price_node.get_text(" ", strip=True) if price_node else None,
            listing_url=listing_url,
        )

    def _enrich_from_detail(self, listing: BookListing) -> None:
        html = self._fetch(listing.listing_url)
        if html:
            self.cache_html(self._safe_id(listing.listing_url), html, url=listing.listing_url)
            soup = BeautifulSoup(html, "html.parser")
            title = soup.select_one("h1, .product-title")
            if title:
                listing.title = title.get_text(" ", strip=True)
            price = soup.select_one(".lbl-price")
            if price:
                listing.price = price.get_text(" ", strip=True)
            description = soup.select_one(".product-description")
            if description:
                listing.seller_comments = description.get_text(" ", strip=True)

    def _safe_id(self, value: str) -> str:
        return re.sub(r"[^a-zA-Z0-9_-]+", "_", value).strip("_")[:100]


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="BeninMarketPlace Benin book product spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()
    BeninMarketPlaceSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
