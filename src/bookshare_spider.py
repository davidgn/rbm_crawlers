import httpx
import time
import json
from models import BookListing
from base_spider import BaseSpider

class BookShareSpider(BaseSpider):
    def __init__(self, limit_items=1000):
        super().__init__(platform_name="Book Share", territory="India")
        self.limit_items = limit_items
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)
        self.base_url = "https://bookshare.wiktait.com/apiv5/book/fetch"

    def run(self):
        self.logger.info(f"Starting Book Share API crawler. Target items: {self.limit_items}")
        
        index = 0
        while index < self.limit_items:
            self.logger.info(f"Fetching books from index {index}...")
            payload = {"index": index}
            
            try:
                response = self.client.post(self.base_url, json=payload)
                response.raise_for_status()
                data = response.json()
            except Exception as e:
                self.logger.error(f"Failed to fetch index {index}: {e}")
                break

            if data.get("Status") != "Success":
                self.logger.info(f"API returned status {data.get('Status')}. Stopping.")
                break

            # Data is a JSON string inside the 'Data' field
            try:
                books = json.loads(data["Data"])
            except Exception as e:
                self.logger.error(f"Failed to parse inner JSON: {e}")
                break

            if not books:
                self.logger.info("No more books returned. Finished.")
                break

            for book in books:
                try:
                    self._parse_item(book)
                except Exception as e:
                    self.logger.error(f"Error parsing book: {e}")

            # Update index for pagination (API seems to return chunks)
            # The count in response is total count, not chunk size.
            # Based on testing, it returns a large batch. Let's see if we need to increment.
            # If we get the same books again, we stop.
            index += len(books)
            
            if index >= int(data.get("Count", 0)):
                self.logger.info("Reached total count reported by API.")
                break

            time.sleep(1)
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _parse_item(self, book_data):
        title = book_data.get("BOOK_NAME")
        author = book_data.get("BOOK_AUTHOR")
        condition = book_data.get("COST_NAME") # Actually 'For Sale', 'For Donation' etc.
        price = book_data.get("COST_NAME") # Store raw cost name for now
        
        book_id = book_data.get("BOOK_ID")
        
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price,
            condition=condition,
            listing_url=f"https://bookshare.wiktait.com/book/{book_id}", # Placeholder URL
            seller_id=book_data.get("USER_NICKNAME"),
            seller_comments=book_data.get("BOOK_EDITION")
        )
        self.save_item(item)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1000)
    args = parser.parse_args()
    
    spider = BookShareSpider(limit_items=args.limit)
    spider.run()
