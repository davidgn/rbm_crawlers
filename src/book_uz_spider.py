import argparse
import json
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BookUzSpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Book.uz", territory="Uzbekistan")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info("Starting Book.uz (Next.js) Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target categories or search for 'old' books
                # Based on research, state='old' is visible in homepage data
                # We will visit the main page and some category pages to extract NEXT_DATA
                urls = [
                    "https://book.uz/",
                    "https://book.uz/uz/books",
                    "https://book.uz/ru/books"
                ]
                
                for url in urls:
                    self.logger.info(f"Visiting {url}...")
                    page.goto(url, timeout=60000, wait_until="networkidle")
                    
                    try:
                        next_data_json = page.evaluate("document.getElementById('__NEXT_DATA__').innerText")
                        data = json.loads(next_data_json)
                        self._process_next_data(data)
                    except Exception as e:
                        self.logger.error(f"Failed to extract NEXT_DATA from {url}: {e}")

            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

    def _process_next_data(self, data):
        books = []
        def find_books(obj):
            if isinstance(obj, list):
                for item in obj:
                    if isinstance(item, dict) and "name" in item and "bookPrice" in item:
                        books.append(item)
                    else:
                        find_books(item)
            elif isinstance(obj, dict):
                for k, v in obj.items():
                    if isinstance(v, (list, dict)):
                        find_books(v)

        find_books(data)
        self.logger.info(f"Found {len(books)} potential book objects in JSON.")
        
        for b in books:
            # We focus on state=='old' but can capture all if it helps saturation
            # Many 'old' books are second hand.
            listing_url = f"https://book.uz/books/details/{b.get('link')}" if b.get('link') else ""
            if not listing_url or listing_url in self._seen_urls:
                continue
                
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=b.get("name", "Unknown"),
                author=b.get("author", {}).get("fullName") if isinstance(b.get("author"), dict) else None,
                isbn=b.get("barcode"),
                publisher=b.get("publisher"),
                publication_year=str(b.get("year")) if b.get("year") else None,
                pages=str(b.get("numberOfPage")) if b.get("numberOfPage") else None,
                binding=b.get("cover"),
                language=b.get("language"),
                price=f"{b.get('bookPrice')} UZS",
                condition="Old" if b.get("state") == "old" else "New",
                listing_url=listing_url
            )
            
            # Additional description if available
            if b.get("description"):
                desc_texts = []
                for d in b.get("description"):
                    if isinstance(d, dict) and d.get("value"):
                        desc_texts.append(d["value"])
                item.seller_comments = " ".join(desc_texts)
                
            self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    args = parser.parse_args()
    spider = BookUzSpider()
    spider.run()
