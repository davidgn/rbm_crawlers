import httpx
import time
from models import BookListing
from base_spider import BaseSpider

class ShopifyAPISpider(BaseSpider):
    """
    A generic spider for Indian bookstores built on Shopify that have the 
    /products.json endpoint exposed.
    """
    def __init__(self, platform_name: str, base_url: str, limit_pages: int = 10):
        super().__init__(platform_name=platform_name, territory="India")
        self.base_url = base_url.rstrip("/")
        self.api_endpoint = f"{self.base_url}/products.json"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, verify=False)

    def run(self):
        self.logger.info(f"Starting Shopify API crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            url = f"{self.api_endpoint}?page={page}&limit=250"
            self.logger.info(f"Fetching page {page}: {url}")
            
            try:
                response = self.client.get(url, headers=self.get_random_headers())
                response.raise_for_status()
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break

            try:
                data = response.json()
            except Exception as e:
                self.logger.error(f"Failed to parse JSON from {url}: {e}")
                break

            products = data.get("products", [])
            if not products:
                self.logger.info(f"No more products found on page {page}. Stopping.")
                break

            for product in products:
                try:
                    self._parse_product(product)
                except Exception as e:
                    self.logger.error(f"Error parsing product {product.get('id')}: {e}")
            
            time.sleep(1) # Polite delay
            
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_product(self, product: dict):
        title = product.get("title", "")
        handle = product.get("handle", "")
        listing_url = f"{self.base_url}/products/{handle}"
        
        # Shopify products usually have variants with prices
        variants = product.get("variants", [])
        price_val = None
        if variants:
            # Take the price of the first variant
            price_val = f"INR {variants[0].get('price')}"
            
        # Author is often in the vendor field or tags
        author = product.get("vendor", "")
        if author.lower() in [self.platform_name.lower(), "default", "books"]:
            author = None
            
        # Try to find author in tags
        if not author:
            for tag in product.get("tags", []):
                if "author" in tag.lower():
                    author = tag.split(":")[-1].strip()
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
