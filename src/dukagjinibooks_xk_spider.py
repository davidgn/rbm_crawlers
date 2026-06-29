import json
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing

class DukagjinibooksXkSpider(BaseSpider):
    """
    Spider for Dukagjini Books (Kosovo).
    Uses their JSON API to scrape product data.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 20):
        super().__init__(platform_name="Dukagjini Books", territory="Kosovo")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)

    def run(self, search_term: str = "roman"):
        self.logger.info(f"Starting crawler for Dukagjini Kosovo. Query: {search_term}")
        
        items_scraped = 0
        limit_per_page = 50
        
        for page in range(1, self.limit_pages + 1):
            if items_scraped >= self.limit_items: break
            
            url = f"https://api.dukagjinibooks.com/api/products?search={search_term}&per_page={limit_per_page}&page={page}"
            
            try:
                resp = self.client.get(url)
                if resp.status_code != 200:
                    self.logger.warning(f"Failed to fetch Dukagjini API, status: {resp.status_code}")
                    break
                    
                data = resp.json()
                products = data.get('data', {}).get('data', [])
                if not products:
                    break
                    
                for p in products:
                    if items_scraped >= self.limit_items: break
                    
                    title = p.get('title')
                    if not title: continue
                    
                    price = p.get('final_price') or p.get('price')
                    if not price: continue
                    
                    # Ensure it's a book
                    if p.get('type') != 'book':
                        # they have non-books, but let's include if unsure
                        pass
                        
                    uid = p.get('id')
                    listing_url = f"https://dukagjinibooks.com/product/{uid}"
                    
                    book = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        price=f"EUR {price}",
                        listing_url=listing_url,
                        condition="New"
                    )
                    self.save_item(book)
                    items_scraped += 1
                    
            except Exception as e:
                self.logger.error(f"Failed to parse Dukagjini API: {e}")
                break

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="roman")
    args = parser.parse_args()
    spider = DukagjinibooksXkSpider()
    spider.run(args.query)
