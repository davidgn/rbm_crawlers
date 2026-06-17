import argparse
import httpx
from base_spider import BaseSpider
from models import BookListing

class PustakStoreSpider(BaseSpider):
    def __init__(self, limit_pages=10, page_size=20):
        super().__init__(platform_name="PustakStore", territory="India")
        self.base_url = "https://pustakstore.in"
        self.api_url = f"{self.base_url}/backend/api/public/product/search_results.php"
        self.limit_pages = limit_pages
        self.page_size = page_size
        self.client = httpx.Client(
            timeout=30.0, 
            follow_redirects=True,
            headers={
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
            }
        )

    def run(self):
        self.logger.info(f"Starting PustakStore crawler. Limit: {self.limit_pages} pages.")
        
        # We can crawl by categories or just general search. 
        # For a broad crawl, we can omit the query to get all items.
        for page in range(1, self.limit_pages + 1):
            try:
                params = {
                    "page": page,
                    "limit": self.page_size,
                    "sort_by": "id_desc" # Get newest first
                }
                response = self.client.get(self.api_url, params=params)
                if response.status_code != 200:
                    self.logger.warning(f"Failed to fetch page {page}, status: {response.status_code}")
                    break
                
                data = response.json()
                if data.get("status") != "success":
                    self.logger.info(f"API returned status: {data.get('status')}. Stopping.")
                    break
                
                items = data.get("data", [])
                if not items:
                    self.logger.info(f"No more items found at page {page}.")
                    break
                    
                for item in items:
                    self._process_item(item)
                    
            except Exception as e:
                self.logger.error(f"Error fetching page {page}: {e}")
                break

        self.logger.info(f"Finished PustakStore. Scraped {self.items_scraped} items.")

    def _process_item(self, item):
        try:
            title = item.get("title")
            if not title:
                return

            listing_url = f"{self.base_url}{item.get('product_url')}"
            
            # Metadata mapping
            price = f"INR {item.get('offer_price')}" if item.get("offer_price") else None
            condition = item.get("book_condition")
            author = item.get("author")
            publisher = item.get("publisher")
            category = f"{item.get('category')} > {item.get('sub_category')}"
            
            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=author if author != "-" else None,
                publisher=publisher if publisher != "-" else None,
                price=price,
                condition=condition,
                category=category,
                listing_url=listing_url,
                pages=str(item.get("pages")) if item.get("pages") != "-" else None,
                language=item.get("language") if item.get("language") != "-" else None,
                binding=item.get("binding") if item.get("binding") != "-" else None,
                publication_year=str(item.get("publishing_date")) if item.get("publishing_date") != "-" else None,
                seller_id=str(item.get("seller_id"))
            ))
        except Exception as e:
            self.logger.error(f"Error processing item {item.get('id')}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="PustakStore India crawler")
    parser.add_argument("--limit", type=int, default=10, help="Max pages to fetch")
    parser.add_argument("--page-size", type=int, default=20, help="Items per page")
    args = parser.parse_args()
    spider = PustakStoreSpider(limit_pages=args.limit, page_size=args.page_size)
    spider.run()
