import httpx
import re
import time
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class WooCommerceAPISpider(BaseSpider):
    """
    A generic spider for Indian bookstores built on WooCommerce that have the 
    /wp-json/wc/store/products REST API endpoint exposed.
    """
    def __init__(self, platform_name: str, base_url: str, territory: str = "India", limit_pages: int = 10):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url.rstrip("/")
        self.api_endpoint = f"{self.base_url}/wp-json/wc/store/products"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, verify=False)

    def run(self):
        self.logger.info(f"Starting WooCommerce API crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        
        # We'll try the Store API first, then fall back to the V2 API
        # Using a smaller per_page value for better reliability on slow servers
        endpoints = [
            f"{self.base_url}/wp-json/wc/store/products?page={{page}}&per_page=20",
            f"{self.base_url}/wp-json/wp/v2/product?page={{page}}&per_page=20"
        ]
        
        current_endpoint_idx = 0
        
        for page in range(1, self.limit_pages + 1):
            url = endpoints[current_endpoint_idx].format(page=page)
            self.logger.info(f"Fetching page {page}: {url}")
            
            try:
                headers = self.get_random_headers()
                headers["Accept"] = "application/json, text/plain, */*"
                response = self.client.get(url, headers=headers)
                if response.status_code == 404:
                    if current_endpoint_idx == 0:
                        self.logger.info("Store API not found, falling back to WP V2 API.")
                        current_endpoint_idx = 1
                        # Retry current page with new endpoint
                        url = endpoints[current_endpoint_idx].format(page=page)
                        response = self.client.get(url)
                    
                    if response.status_code == 404:
                        self.logger.info(f"Reached end of pagination or endpoint unavailable at page {page}.")
                        break
                        
                response.raise_for_status()
                
                try:
                    data = response.json()
                except Exception:
                    self.logger.error(f"Failed to parse JSON from {url}")
                    break
                    
                if not isinstance(data, list) or len(data) == 0:
                    self.logger.info(f"No more products found on page {page}. Stopping.")
                    break

                for product in data:
                    try:
                        self._parse_product(product)
                    except Exception as e:
                        # self.logger.error(f"Error parsing product: {e}")
                        pass
                
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break
            
            time.sleep(1) # Polite delay
            
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")


    def _parse_product(self, product: dict):
        title = product.get("name", "")
        if not title and "title" in product:
            title = product["title"].get("rendered", "")
            
        listing_url = product.get("permalink", "")
        
        # WooCommerce stores prices in minor units (e.g. 1000 = 10.00) or strings
        price_val = None
        prices = product.get("prices", {})
        if prices and prices.get("price"):
            # Price usually comes back as "15000" representing 150.00
            raw_price = prices.get("price")
            currency = prices.get("currency_code", "INR")
            minor_unit = prices.get("currency_minor_unit", 2)
            try:
                numeric_price = float(raw_price) / (10 ** minor_unit)
                price_val = f"{currency} {numeric_price:.2f}"
            except:
                price_val = f"{currency} {raw_price}"
                
        # Attempt to extract author from attributes or tags
        author = None
        for attr in product.get("attributes", []):
            if attr.get("name", "").lower() in ["author", "authors", "writer"]:
                terms = attr.get("terms", [])
                if terms:
                    author = ", ".join([t.get("name") for t in terms])
                    break
                    
        # Fallback to tags if author attribute not found
        if not author:
            for tag in product.get("tags", []):
                name = tag.get("name", "")
                if "author" in name.lower():
                    author = name.replace("Author:", "").strip()
                    break

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(item)
