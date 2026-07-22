import argparse
import logging
from urllib.parse import urljoin
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing
from isbn_utils import isbn_from_url

class NetSuiteSearchSpider(BaseSpider):
    """
    A generic spider for NetSuite SuiteCommerce / SuiteCommerce Advanced (SCA) sites
    that fetches search results directly from the REST Item Search API.
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
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)

    def run(self, search_term: str = None):
        if not search_term:
            import os
            search_term = os.getenv("RBM_SEARCH_TERM", "book")

        self.logger.info(f"Starting NetSuite Search crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")

        page_size = 50
        for page in range(1, self.limit_pages + 1):
            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                break

            offset = (page - 1) * page_size
            url = f"{self.base_url}/api/items?q={search_term.replace(' ', '+')}&fieldset=details&limit={page_size}&offset={offset}"
            self.logger.info(f"Fetching NetSuite API page {page}: {url}")

            try:
                r = self.client.get(url)
                if r.status_code != 200:
                    self.logger.warning(f"Got status {r.status_code} for {url}")
                    break

                data = r.json()
                items = data.get("items", [])
                if not items:
                    self.logger.info("No items returned in this page. Stopping.")
                    break

                for item in items:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break

                    try:
                        self._parse_item(item)
                    except Exception as e:
                        self.logger.error(f"Error parsing item: {e}")

                if len(items) < page_size:
                    self.logger.info("Reached end of results (returned less than page size).")
                    break

            except Exception as e:
                self.logger.error(f"Failed to fetch page {page}: {e}")
                break

        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_item(self, item):
        title = item.get("displayname") or item.get("storedisplayname2")
        if not title:
            return

        urlcomponent = item.get("urlcomponent")
        if not urlcomponent:
            return

        listing_url = urljoin(self.base_url, urlcomponent)

        # Price
        price_val = None
        price_detail = item.get("onlinecustomerprice_detail") or {}
        if "onlinecustomerprice" in price_detail:
            price_val = str(price_detail["onlinecustomerprice"])
        elif "onlinecustomerprice_formatted" in price_detail:
            price_text = price_detail["onlinecustomerprice_formatted"]
            import re
            match = re.search(r"[\d\.]+", price_text)
            if match:
                price_val = match.group(0)

        # ISBN
        isbn = item.get("custitem_nsts_csic_isbn") or item.get("upccode")
        if isbn:
            isbn = str(isbn).strip()
            # Basic validation
            import re
            isbn = re.sub(r"[^\dX]", "", isbn.upper())
            if len(isbn) not in [10, 13]:
                isbn = None

        if not isbn:
            isbn = isbn_from_url(listing_url)

        # Author / Details
        author = item.get("custitem_details") or item.get("storedetaileddescription")
        if author:
            author = str(author).strip()
            # Clean HTML if present
            if "<" in author and ">" in author:
                import re
                author = re.sub(r"<[^>]+>", "", author)
            if len(author) > 100:
                author = author[:100] + "..."

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

if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="NetSuite Search Spider")
    parser.add_argument("--url", type=str, required=True)
    parser.add_argument("--name", type=str, default="NetSuite Store")
    parser.add_argument("--query", type=str, default="book")
    args = parser.parse_args()
    
    spider = NetSuiteSearchSpider(platform_name=args.name, base_url=args.url)
    spider.run(search_term=args.query)
