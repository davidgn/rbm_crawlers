import httpx
import time
import json
from models import BookListing
from base_spider import BaseSpider

class NearBookSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="NearBook", territory="India")
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)
        self.base_url = "https://api.nearbook.app/api"

    def run(self):
        self.logger.info(f"Starting NearBook Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
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
                break

            books = data["books"]
            for book in books:
                book_id = book.get("bookId")
                if not book_id: continue
                
                try:
                    self._harvest_item(book_id, book)
                except Exception as e:
                    self.logger.error(f"Error harvesting book {book_id}: {e}")

            time.sleep(1)
            
        self.logger.info(f"Finished. Harvested {self.items_scraped} items to cache.")

    def _harvest_item(self, book_id, list_book_data):
        detail_url = f"{self.base_url}/getBookDetail?bookId={book_id}&locationId=0"
        try:
            resp = self.client.get(detail_url)
            if resp.status_code != 200:
                return
            data = resp.json()
        except Exception as e:
            self.logger.error(f"Error fetching detail {book_id}: {e}")
            return

        book = data.get("book") or {}
        title = book.get("name") or list_book_data.get("name") or "Untitled NearBook listing"
        author = book.get("author") or None
        publisher = book.get("publisher") or None
        edition = book.get("edition") or None
        price_raw = book.get("price")
        price = f"₹{price_raw}" if price_raw else None
        mrp_raw = book.get("mrp")
        if mrp_raw and price and str(mrp_raw) != str(price_raw):
            price = f"{price} (MRP ₹{mrp_raw})"
        condition_val = book.get("condition")
        condition_map = {0: "Used", 1: "Like New", 2: "Good", 3: "Fair"}
        condition_text = condition_map.get(condition_val, None)
        desc = book.get("desc") or None
        image = book.get("image") or None
        parts = []
        if desc:
            parts.append(f"desc={desc}")
        if image:
            parts.append(f"image={image}")
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            publisher=publisher,
            edition=edition,
            price=price,
            condition=condition_text,
            seller_comments="; ".join(parts) if parts else None,
            listing_url=f"https://nearbook.app/book/{book_id}",
        )
        self.save_item(item)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=3)
    args = parser.parse_args()
    NearBookSpider(limit_pages=args.limit).run()
