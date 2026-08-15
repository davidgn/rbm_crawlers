import httpx
import time
from models import BookListing
from base_spider import BaseSpider

class ShopifyAPISpider(BaseSpider):
    """
    A generic spider for bookstores built on Shopify that have the 
    /products.json endpoint exposed.
    """
    def __init__(
        self,
        platform_name: str,
        base_url: str,
        territory: str = "India",
        limit_pages: int = 10,
        limit_items: int | None = None,
        currency: str | None = None,
        **kwargs,
    ):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url.rstrip("/")
        self.api_endpoint = f"{self.base_url}/products.json"
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.currency = currency or self._infer_currency(territory)
        self.items_attempted = 0
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, verify=False)

    def _infer_currency(self, territory: str) -> str:
        t = territory.lower()
        if "south africa" in t:
            return "ZAR"
        if "colombia" in t:
            return "COP"
        if "turkey" in t:
            return "TRY"
        if "pakistan" in t:
            return "PKR"
        if "india" in t:
            return "INR"
        return "USD"

    def run(self):
        self.logger.info(f"Starting Shopify API crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            if self.limit_items is not None and self.items_attempted >= self.limit_items:
                break
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
                if self.limit_items is not None and self.items_attempted >= self.limit_items:
                    break
                try:
                    self.items_attempted += 1
                    self._parse_product(product)
                except Exception as e:
                    self.logger.error(f"Error parsing product {product.get('id')}: {e}")

            time.sleep(1) # Polite delay between API calls

        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_product(self, product: dict):
        title = product.get("title")
        if not title:
            return

        body_html = product.get("body_html", "")
        vendor = product.get("vendor")
        handle = product.get("handle")
        listing_url = f"{self.base_url}/products/{handle}" if handle else None

        variants = product.get("variants", [])
        if not variants:
            return

        price = variants[0].get("price")
        if not price:
            return

        # Attempt to get ISBN from variants
        isbn = None
        for variant in variants:
            barcode = variant.get("barcode")
            sku = variant.get("sku")
            if barcode and (len(barcode) == 10 or len(barcode) == 13):
                isbn = barcode
                break
            elif sku and (len(sku) == 10 or len(sku) == 13) and sku.isdigit():
                isbn = sku
                break

        listing = BookListing(
            platform=self.platform_name,
            territory=self.territory,
            title=title,
            author=vendor,
            price=str(price),
            price_currency=self.currency,
            listing_url=listing_url,
            isbn=isbn
        )

        if body_html:
            listing = self.scavenge_metadata(body_html, listing)

        self.save_item(listing)
