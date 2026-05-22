import httpx
import time
from models import BookListing
from base_spider import BaseSpider

class BiblusiSpider(BaseSpider):
    """
    Spider for Biblusi (Georgia) using their REST API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="Biblusi", territory="Georgia")
        self.api_base = "https://apiv1.biblusi.ge/api"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)

    def run(self):
        self.logger.info(f"Starting Biblusi API crawler. Limit: {self.limit_pages} pages.")
        
        # We'll crawl by search or category. For general coverage, we can iterate 'best' or 'new'
        # or use a generic search term.
        search_terms = ["Harry Potter", "Tolkien", "King"]
        
        for term in search_terms:
            for page in range(1, self.limit_pages + 1):
                url = f"{self.api_base}/book?search={term}&page={page}&per_page=100&author=1"
                self.logger.info(f"Fetching {url}")
                
                try:
                    response = self.client.get(url)
                    response.raise_for_status()
                    data = response.json()
                    
                    books = data.get("data", [])
                    if not books:
                        break
                        
                    for book in books:
                        self._parse_book(book)
                        
                except Exception as e:
                    self.logger.error(f"Failed to fetch {url}: {e}")
                    break
                    
                time.sleep(1)

        self.logger.info(f"Finished Biblusi. Scraped {self.items_scraped} items.")

    def _parse_book(self, book: dict):
        title = book.get("name", "")
        # Price is in 'p' or variations
        price_val = None
        if "p" in book:
            price_val = f"GEL {book['p']}"
            
        listing_id = book.get("id")
        listing_url = f"https://biblusi.ge/products/{listing_id}" if listing_id else None
        
        # Author is often null in the search list unless &author=1 is passed
        author = None
        authors = book.get("authors", [])
        if authors:
            author = ", ".join([a.get("name", "") for a in authors if a.get("name")])
        elif book.get("author"):
            author = book["author"].get("name")

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = BiblusiSpider(limit_pages=1)
    spider.run()
