import argparse
import logging
from urllib.parse import urljoin
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing

class ShopifySearchSpider(BaseSpider):
    """
    A generic spider for Shopify e-commerce bookstores.
    Fetches search results directly from the native suggest.json API.
    """
    def __init__(
        self,
        platform_name: str,
        base_url: str,
        territory: str = "United States",
        price_currency: str = "USD",
        limit_pages: int = 5,
        limit_items: int | None = None,
        **kwargs
    ):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url.rstrip("/")
        self.price_currency = price_currency
        # Note: Shopify search/suggest.json doesn't support pagination, but we support limit_items.
        self.limit_items = limit_items
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)

    def run(self, search_term: str = None):
        if not search_term:
            import os
            search_term = os.getenv("RBM_SEARCH_TERM", "book")

        self.logger.info(f"Starting Shopify Search crawler for {self.platform_name}.")

        url = f"{self.base_url}/search/suggest.json?q={search_term.replace(' ', '+')}&resources[type]=product"
        self.logger.info(f"Fetching Shopify JSON API: {url}")

        try:
            r = self.client.get(url)
            if r.status_code != 200:
                self.logger.warning(f"Got status {r.status_code} for {url}")
                return

            data = r.json()
            products = data.get("resources", {}).get("results", {}).get("products", [])
            
            for prod in products:
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break

                try:
                    self._parse_product(prod)
                except Exception as e:
                    self.logger.error(f"Error parsing Shopify product: {e}")

        except Exception as e:
            self.logger.error(f"Failed to fetch Shopify API: {e}")

        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_product(self, prod):
        title = prod.get("title")
        if not title:
            return

        rel_url = prod.get("url")
        if not rel_url:
            return
        listing_url = urljoin(self.base_url, rel_url)

        # Price
        price_val = prod.get("price")
        if price_val:
            price_val = str(price_val)

        # ISBN (sometimes in the body or tags or handle, we do our best)
        isbn = None
        handle = prod.get("handle", "") or ""
        body_text = prod.get("body") or ""
        # Regex check for 13 or 10 digit isbn in handle or description
        isbn_match = re.search(r'\b(97[89]\d{10}|\d{10})\b', handle + " " + body_text)

        if isbn_match:
            isbn = isbn_match.group(1)

        # Author (sometimes in tags or vendor or body)
        author = prod.get("vendor")
        if author == self.platform_name or author == "Shopify":
            author = None

        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            price_currency=self.price_currency,
            listing_url=listing_url,
            isbn=isbn
        )
        self.save_item(book)

import re
if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Shopify Search Spider")
    parser.add_argument("--url", type=str, required=True, help="Shopify store base URL")
    parser.add_argument("--name", type=str, default="Shopify Store")
    parser.add_argument("--query", type=str, default="book")
    args = parser.parse_args()
    
    spider = ShopifySearchSpider(platform_name=args.name, base_url=args.url)
    spider.run(search_term=args.query)
