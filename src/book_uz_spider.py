import httpx
from base_spider import BaseSpider
from models import BookListing
import json

class BookUzSpider(BaseSpider):
    """
    Spider for Book.uz (Uzbekistan).
    Uses their internal REST API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="Book.uz", territory="Uzbekistan")
        self.limit_pages = limit_pages
        self.api_url = "https://backend.book.uz/user-api/book"
        self.client = httpx.Client(verify=False)

    def run(self, query: str = "Potter"):
        self.logger.info(f"Starting API crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        
        headers = {
            'language': 'uz',
            'authorization': 'Bearer undefined',
            'referer': 'https://book.uz/',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'
        }

        for page in range(1, self.limit_pages + 1):
            params = {'q': query, 'limit': 20, 'page': page}
            self.logger.info(f"Fetching page {page}: {self.api_url} with q={query}")
            try:
                r = self.client.get(self.api_url, params=params, headers=headers, timeout=15)
                if r.status_code == 200:
                    data = r.json()
                    items = data.get('data', {}).get('data', [])
                    if not items:
                        self.logger.info(f"No items found on page {page}. Stopping.")
                        break
                    
                    for item in items:
                        title = item.get('name', '')
                        book_id = item.get('id')
                        link = f"https://book.uz/product/{book_id}" if book_id else ""
                        
                        listing = BookListing(
                            platform=self.platform_name,
                            territory=self.territory,
                            title=title,
                            listing_url=link
                        )
                        self.save_item(listing)
                else:
                    self.logger.info(f"API returned status {r.status_code} at page {page}.")
                    break
            except Exception as e:
                self.logger.error(f"Failed to fetch {self.api_url}: {e}")
                break
        
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    spider = BookUzSpider(limit_pages=1)
    spider.run()
