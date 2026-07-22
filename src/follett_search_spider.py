import argparse
import logging
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing

class FollettSearchSpider(BaseSpider):
    """
    A generic spider for Follett Higher Education Group (bkstr.com) stores
    that fetches search results directly from their internal JSON REST API.
    """
    def __init__(
        self,
        platform_name: str,
        store_name: str,
        territory: str = "United States",
        price_currency: str = "USD",
        limit_pages: int = 5,
        limit_items: int | None = None,
        **kwargs
    ):
        super().__init__(platform_name=platform_name, territory=territory)
        self.store_name = store_name
        self.price_currency = price_currency
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)
        
        # Cached identifiers
        self.store_id = None
        self.catalog_id = None

    def _resolve_store_ids(self) -> bool:
        """Fetch store config to retrieve storeId and catalogId."""
        url = f"https://svc.ecpr.bkstr.com/store/config?storeName={self.store_name}"
        self.logger.info(f"Resolving store config for {self.store_name} via {url}...")
        try:
            r = self.client.get(url)
            if r.status_code != 200:
                self.logger.error(f"Failed to fetch store config for {self.store_name}. Status: {r.status_code}")
                return False
            
            data = r.json()
            identifiers = data.get("aemStoreIdentifiers", {})
            self.store_id = identifiers.get("storeId")
            self.catalog_id = identifiers.get("catalogId")
            
            if self.store_id and self.catalog_id:
                self.logger.info(f"Resolved: storeId={self.store_id}, catalogId={self.catalog_id}")
                return True
            else:
                self.logger.error(f"Could not find storeId or catalogId in config response.")
                return False
        except Exception as e:
            self.logger.error(f"Error resolving store config: {e}")
            return False

    def run(self, search_term: str = None):
        if not search_term:
            import os
            search_term = os.getenv("RBM_SEARCH_TERM", "potter")

        if not self.store_id or not self.catalog_id:
            if not self._resolve_store_ids():
                self.logger.error("Abort: Store identifiers could not be resolved.")
                return

        self.logger.info(f"Starting Follett Search crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")

        page_size = 50
        for page in range(1, self.limit_pages + 1):
            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                break

            offset = (page - 1) * page_size
            url = (
                f"https://svc.ecpr.bkstr.com/search/keywordSearch"
                f"?searchTerm={search_term.replace(' ', '+')}"
                f"&storeId={self.store_id}"
                f"&catalogId={self.catalog_id}"
                f"&limit={page_size}"
                f"&offset={offset}"
            )
            self.logger.info(f"Fetching Follett API page {page}: {url}")

            try:
                r = self.client.get(url)
                if r.status_code != 200:
                    self.logger.warning(f"Got status {r.status_code} for {url}")
                    break

                data = r.json()
                items = data.get("catalogEntryView", [])
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
        title = item.get("name")
        if not title:
            return

        unique_id = item.get("uniqueID")
        if not unique_id:
            return

        listing_url = f"https://www.bkstr.com/{self.store_name}/product/{unique_id}"

        # Attributes
        attrs = item.get("attributes", {})
        
        # Author
        author = None
        if "Author" in attrs and attrs["Author"]:
            author = attrs["Author"][0].get("value")
            if author:
                author = author.strip()

        # ISBN
        isbn = None
        if "Isbn" in attrs and attrs["Isbn"]:
            isbn = attrs["Isbn"][0].get("value")
        if not isbn and "ISBN_10" in attrs and attrs["ISBN_10"]:
            isbn = attrs["ISBN_10"][0].get("value")
        
        if isbn:
            isbn = str(isbn).strip()
            import re
            isbn = re.sub(r"[^\dX]", "", isbn.upper())
            if len(isbn) not in [10, 13]:
                isbn = None

        # Price
        price_val = None
        for p in item.get("price", []):
            if p.get("usage") == "Offer" and p.get("value"):
                price_val = str(p["value"])
                break

        # Publisher / Manufacturer
        publisher = None
        if "Publisher Name" in attrs and attrs["Publisher Name"]:
            publisher = attrs["Publisher Name"][0].get("value")
        if not publisher and "Manufacturer" in attrs and attrs["Manufacturer"]:
            publisher = attrs["Manufacturer"][0].get("value")

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
        if publisher:
            setattr(book, 'publisher', publisher)
            
        self.save_item(book)

if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Follett Search Spider")
    parser.add_argument("--store", type=str, required=True, help="Follett store name/slug")
    parser.add_argument("--name", type=str, default="Follett Store")
    parser.add_argument("--query", type=str, default="potter")
    args = parser.parse_args()
    
    spider = FollettSearchSpider(platform_name=args.name, store_name=args.store)
    spider.run(search_term=args.query)
