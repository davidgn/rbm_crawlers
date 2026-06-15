import httpx
import time
import argparse
from models import BookListing
from base_spider import BaseSpider

class NearBookSpiderV2(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="NearBook", territory="Regional")
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)
        self.base_url = "https://api.nearbook.app/api"

    def run(self):
        self.logger.info("Starting NearBook V2 deep sweep.")
        
        # 1. Fetch category list with IDs
        categories = []
        try:
            res = self.client.get(f"{self.base_url}/categoriesNew")
            data = res.json()
            if data.get("status") == "success":
                categories = data.get("categories", [])
                self.logger.info(f"Discovered {len(categories)} categories.")
        except Exception as e:
            self.logger.error(f"Failed to fetch categories: {e}")

        # 2. Sweep special tiers
        for tier in ["cheapBooks", "latestBooks"]:
            self.logger.info(f"=== Sweeping Tier: {tier} ===")
            self._sweep_tier(tier)

        # 3. Sweep all categories
        for cat in categories:
            cat_id = cat.get("categoryId")
            cat_name = cat.get("categoryName")
            if cat_id is None: continue
            
            self.logger.info(f"=== Sweeping Category: {cat_name} (ID: {cat_id}) ===")
            self._sweep_category(cat_id)

        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _sweep_tier(self, endpoint):
        for page in range(1, self.limit_pages + 1):
            url = f"{self.base_url}/{endpoint}?page={page}"
            try:
                response = self.client.get(url)
                data = response.json()
                books = data.get("books", [])
                if not books or not isinstance(books, list):
                    break
                    
                for book in books:
                    if not isinstance(book, dict): continue
                    book_id = book.get("bookId")
                    if not book_id: continue
                    self._parse_item(book_id, book)
            except Exception as e:
                self.logger.error(f"Error on {url}: {e}")
                break
            time.sleep(0.2)

    def _sweep_category(self, category_id):
        for page in range(1, self.limit_pages + 1):
            # Using categoryBooksByPages as seen in smali
            url = f"{self.base_url}/categoryBooksByPages?categoryId={category_id}&lat=0&lng=0&page={page}"
            try:
                response = self.client.get(url)
                data = response.json()
                books = data.get("books", [])
                if not books or not isinstance(books, list):
                    break
                    
                for book in books:
                    if not isinstance(book, dict): continue
                    book_id = book.get("bookId")
                    if not book_id: continue
                    self._parse_item(book_id, book)
            except Exception as e:
                self.logger.error(f"Error on category {category_id} page {page}: {e}")
                break
            time.sleep(0.2)

    def _parse_item(self, book_id, list_data):
        detail_url = f"{self.base_url}/getBookDetail?bookId={book_id}&locationId=0"
        try:
            res = self.client.get(detail_url)
            details_list = res.json().get("bookDetail", [])
            if not details_list: return
            details = details_list[0]
            
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=details.get("name") or list_data.get("name") or "Unknown",
                author=details.get("author"),
                price=f"LKR/INR {list_data.get('price')}" if list_data.get('price') else None,
                isbn=details.get("isbn"),
                condition=details.get("bookCondition"),
                listing_url=f"https://www.nearbook.app/app?book={book_id}"
            )
            self.save_item(item)
        except:
            pass

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=50)
    args = parser.parse_args()
    spider = NearBookSpiderV2(limit_pages=args.limit)
    spider.run()
