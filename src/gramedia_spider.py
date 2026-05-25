import httpx
import time
from models import BookListing
from base_spider import BaseSpider

class GramediaSpider(BaseSpider):
    """
    Spider for Gramedia (Indonesia).
    Uses their internal REST API discovered during probing.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="Gramedia", territory="Indonesia")
        self.api_base = "https://api-service.gramedia.com/api/v2/public/search-result-product"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)

    def run(self):
        self.logger.info(f"Starting Gramedia API crawler. Limit: {self.limit_pages} pages.")
        
        # Primary search terms to build the regional inventory
        search_terms = ["Harry Potter", "Tolkien", "Indonesia", "Buku"]
        
        for term in search_terms:
            for page in range(1, self.limit_pages + 1):
                url = f"{self.api_base}?is_available_only=true&keyword={term}&page={page}&size=20"
                self.logger.info(f"Fetching page {page} for term '{term}': {url}")
                
                try:
                    response = self.client.get(url, headers=self.get_random_headers())
                    response.raise_for_status()
                    data = response.json()
                    
                    items = data.get("data", [])
                    if not items:
                        break
                        
                    for item in items:
                        self._parse_item(item)
                        
                    # Check if we've reached the last page
                    # Pagination info usually in metadata or headers, but checking item count is a safe fallback
                    if len(items) < 20:
                        break
                        
                except Exception as e:
                    self.logger.error(f"Failed to fetch {url}: {e}")
                    break
                    
                time.sleep(1)

        self.logger.info(f"Finished Gramedia. Scraped {self.items_scraped} items.")

    def _parse_item(self, item: dict):
        title = item.get("title", "")
        author = item.get("author", "")
        
        # Prices in IDR
        price_val = None
        if "final_price" in item:
            price_val = f"IDR {item['final_price']}"
            
        slug = item.get("slug")
        listing_url = f"https://www.gramedia.com/products/{slug}" if slug else ""
        
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
    spider = GramediaSpider(limit_pages=1)
    spider.run()
