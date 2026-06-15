import httpx
from models import BookListing
from base_spider import BaseSpider

class SebowebSpider(BaseSpider):
    """
    Spider for Seboweb (Brazil) using their backend API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="Seboweb", territory="Brazil")
        self.api_base = "https://seboweb-server.kintelligence.com.br:3001"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, verify=False)

    def run(self):
        self.logger.info(f"Starting Seboweb API crawler. Limit: {self.limit_pages} pages.")
        
        # Site seems small, we'll pull all books
        url = f"{self.api_base}/books"
        self.logger.info(f"Fetching all books from {url}")
        
        try:
            response = self.client.get(url)
            response.raise_for_status()
            data = response.json()
            
            if not isinstance(data, list):
                self.logger.error("API response is not a list.")
                return

            for book in data:
                self._parse_book(book)
                
        except Exception as e:
            self.logger.error(f"Failed to fetch Seboweb API: {e}")

        self.logger.info(f"Finished Seboweb. Scraped {self.items_scraped} items.")

    def _parse_book(self, book: dict):
        title = book.get("title", "")
        price_val = f"BRL {book.get('price')}" if book.get("price") else None
        
        listing_id = book.get("id")
        listing_url = f"https://www.seboweb.com.br/livro/{listing_id}" if listing_id else ""
        
        author = book.get("author")

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
    spider = SebowebSpider()
    spider.run()
