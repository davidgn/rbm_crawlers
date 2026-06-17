import argparse
import httpx
from base_spider import BaseSpider
from models import BookListing

class BookLoopSpider(BaseSpider):
    """BookLoop India crawler backed by Supabase.
    
    Reverse Engineered from: https://bookloop.xyz/
    Endpoint: https://vcbgcscfmtstvvjkvoop.supabase.co
    Table: books
    """
    
    SUPABASE_URL = "https://vcbgcscfmtstvvjkvoop.supabase.co"
    ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZjYmdjc2NmbXRzdHZ2amt2b29wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc5Mzg1NjksImV4cCI6MjA3MzUxNDU2OX0.6m_aiS1pd-RkhUgqg7Oxm76IM9H4b2vBTOx66bpIgtw"
    API_URL = f"{SUPABASE_URL}/rest/v1/books"

    def __init__(self, limit_items=100):
        super().__init__(platform_name="BookLoop", territory="India")
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
        self.logger.info(f"Starting BookLoop Supabase harvest. Limit: {self.limit_items} items.")
        
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
            self.logger.error(f"Error in BookLoop crawler: {e}")
        finally:
            self.client.close()

        self.logger.info(f"Finished BookLoop. Scraped {self.items_scraped} items.")

    def _process_item(self, item):
        title = item.get("title")
        if not title:
            return
            
        listing_id = item.get("id")
        listing_url = f"https://bookloop.xyz/book/{listing_id}"
        
        # BookLoop often uses 'Available' price or specific currency
        price = "For Exchange" if item.get("is_available") else "Not Available"
        
        self.save_item(BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=item.get("author") or None,
            category=item.get("category"),
            isbn=item.get("isbn"),
            price=price,
            listing_url=listing_url,
            seller_comments=item.get("description"),
            seller_id=item.get("owner_id")
        ))

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="BookLoop India Supabase crawler")
    parser.add_argument("--limit", type=int, default=100, help="Max items to fetch")
    args = parser.parse_args()
    spider = BookLoopSpider(limit_items=args.limit)
    spider.run()
