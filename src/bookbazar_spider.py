import argparse
import httpx
from base_spider import BaseSpider
from models import BookListing

class BookBazarSpider(BaseSpider):
    """BookBazar India crawler backed by Supabase.
    
    Reverse Engineered from: https://bookbazar.store/
    Endpoint: https://tsohtsdpcbavecozzgye.supabase.co
    Table: books
    """
    
    SUPABASE_URL = "https://tsohtsdpcbavecozzgye.supabase.co"
    ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRzb2h0c2RwY2JhdmVjb3p6Z3llIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYyOTU5NjgsImV4cCI6MjA4MTg3MTk2OH0.mz6-6e3pkOg8OQ9E-9JIUXJjcSIVCLVbLepwLhG2SPQ"
    API_URL = f"{SUPABASE_URL}/rest/v1/books"

    def __init__(self, limit_items=100):
        super().__init__(platform_name="BookBazar", territory="India")
        self.limit_items = limit_items
        self.client = httpx.Client(
            timeout=30.0,
            headers={
                "apikey": self.ANON_KEY,
                "Authorization": f"Bearer {self.ANON_KEY}",
                "Content-Type": "application/json",
                "Prefer": "count=exact"
            }
        )

    def run(self):
        self.logger.info(f"Starting BookBazar Supabase harvest. Limit: {self.limit_items} items.")
        
        try:
            # Fetch books ordered by creation date
            params = {
                "select": "*",
                "order": "created_at.desc",
                "limit": self.limit_items
            }
            response = self.client.get(self.API_URL, params=params)
            response.raise_for_status()
            
            items = response.json()
            for item in items:
                if self.items_scraped >= self.limit_items:
                    break
                self._process_item(item)
                
        except Exception as e:
            self.logger.error(f"Error in BookBazar crawler: {e}")
        finally:
            self.client.close()

        self.logger.info(f"Finished BookBazar. Scraped {self.items_scraped} items.")

    def _process_item(self, item):
        title = item.get("title")
        if not title:
            return
            
        listing_id = item.get("id")
        listing_url = f"https://bookbazar.store/book/{listing_id}"
        
        price = item.get("price")
        price_text = f"INR {price}" if price is not None else None
        
        self.save_item(BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=item.get("author") or None,
            category=item.get("category"),
            condition=item.get("condition"),
            price=price_text,
            listing_url=listing_url,
            seller_comments=f"Address: {item.get('pickup_address') or 'N/A'}; Landmark: {item.get('landmark') or 'N/A'}",
            seller_id=item.get("seller_id")
        ))

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="BookBazar India Supabase crawler")
    parser.add_argument("--limit", type=int, default=100, help="Max items to fetch")
    args = parser.parse_args()
    spider = BookBazarSpider(limit_items=args.limit)
    spider.run()
