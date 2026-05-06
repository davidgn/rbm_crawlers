import httpx
import time
from models import BookListing
from base_spider import BaseSpider

class NearBookSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="NearBook", territory="India")
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)
        self.base_url = "https://api.nearbook.app/api"

    def run(self):
        self.logger.info(f"Starting NearBook API crawler. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            list_url = f"{self.base_url}/latestBooks?page={page}"
            self.logger.info(f"Fetching page {page}: {list_url}")
            
            try:
                response = self.client.get(list_url)
                response.raise_for_status()
                data = response.json()
            except Exception as e:
                self.logger.error(f"Failed to fetch {list_url}: {e}")
                break

            if data.get("status") != "success" or not data.get("books"):
                self.logger.info(f"No more books found or API returned empty on page {page}. Stopping.")
                break

            books = data["books"]
            for book in books:
                book_id = book.get("bookId")
                if not book_id:
                    continue
                
                try:
                    self._parse_item(book_id, book)
                except Exception as e:
                    self.logger.error(f"Error parsing book {book_id}: {e}")

            time.sleep(1) # Polite delay between pages
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _parse_item(self, book_id, list_book_data):
        detail_url = f"{self.base_url}/getBookDetail?bookId={book_id}&locationId=0"
        
        try:
            resp = self.client.get(detail_url)
            resp.raise_for_status()
            detail_data = resp.json()
        except Exception as e:
            self.logger.error(f"Failed to fetch details for {book_id}: {e}")
            return
            
        if detail_data.get("status") != "success" or not detail_data.get("book"):
            return
            
        book_details = detail_data["book"]
        
        title = book_details.get("name", list_book_data.get("name"))
        author = book_details.get("author")
        
        price = book_details.get("price")
        price_val = f"INR {price}" if price else None
        
        condition_val = book_details.get("condition")
        condition = str(condition_val) if condition_val is not None else None

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            edition=book_details.get("book_edition"),
            category=str(book_details.get("book_category_id")),
            price=price_val,
            condition=condition,
            listing_url=f"https://nearbook.app/book/{book_id}",
            seller_id=str(book_details.get("userId")) if book_details.get("userId") else None
        )
        self.save_item(item)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=3)
    args = parser.parse_args()
    
    spider = NearBookSpider(limit_pages=args.limit)
    spider.run()
