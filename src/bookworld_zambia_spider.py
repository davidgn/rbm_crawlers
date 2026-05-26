import httpx
import time
from models import BookListing
from base_spider import BaseSpider

class BookworldZambiaSpider(BaseSpider):
    """
    Spider for Bookworld Zambia using their discovered AJAX API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="Bookworld Zambia", territory="Zambia")
        self.api_base = "https://www.bookworldzambia.com/ajax/store/products/facets"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)

    def run(self):
        self.logger.info(f"Starting Bookworld Zambia API crawler. Limit: {self.limit_pages} pages.")
        
        search_terms = ["Harry Potter", "Potter", "Zambia", "Book"]
        
        for term in search_terms:
            for page in range(1, self.limit_pages + 1):
                # The API uses GET with SearchTerm and Page
                params = {
                    "SearchTerm": term,
                    "Page": page,
                    "PageSize": 20,
                    "SortBy": "default"
                }
                self.logger.info(f"Fetching page {page} for term '{term}'")
                
                try:
                    response = self.client.get(self.api_base, params=params, headers=self.get_random_headers())
                    response.raise_for_status()
                    data = response.json()
                    
                    products = data.get("Products", [])
                    if not products:
                        break
                        
                    for prod in products:
                        self._parse_product(prod)
                        
                    if page >= data.get("TotalPages", 1):
                        break
                        
                except Exception as e:
                    self.logger.error(f"Failed to fetch {self.api_base} for {term}: {e}")
                    break
                    
                time.sleep(1)

        self.logger.info(f"Finished Bookworld Zambia. Scraped {self.items_scraped} items.")

    def _parse_product(self, prod: dict):
        title = prod.get("Name", "")
        
        # Price usually in a structured field or we can use the GA-style one if needed
        # But facets body has 'Price' or similar? Let's check the body start again.
        # Actually the GA call had more price info. 
        # For now, we'll try to find price in the product dict.
        price_val = None
        if "Price" in prod:
            price_val = f"ZMW {prod['Price']}"
            
        listing_url = "https://www.bookworldzambia.com" + prod.get("Url", "")
        
        author = prod.get("Manufacturer") # Sometimes authors are mapped to manufacturers in these systems

        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(book)

if __name__ == "__main__":
    spider = BookworldZambiaSpider(limit_pages=1)
    spider.run()
