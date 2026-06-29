import json
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing

class DelfiRsSpider(BaseSpider):
    """
    Spider for Delfi (Serbia).
    Uses their open JSON API to bypass Cloudflare and frontend React rendering.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 20):
        super().__init__(platform_name="Delfi Knjizare", territory="Serbia")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)

    def run(self, search_term: str = "roman"):
        self.logger.info(f"Starting crawler for Delfi Serbia. Query: {search_term}")
        
        items_scraped = 0
        limit_per_page = 20
        
        for page in range(self.limit_pages):
            if items_scraped >= self.limit_items: break
            
            skip = page * limit_per_page
            url = f"https://delfi.rs/api/pc-frontend-api/search/advance-search/{search_term}?sort=order_asc&limit={limit_per_page}&skip={skip}"
            
            try:
                resp = self.client.get(url)
                if resp.status_code != 200:
                    self.logger.warning(f"Failed to fetch Delfi API, status: {resp.status_code}")
                    break
                    
                data = resp.json()
                products = data.get('data', {}).get('products', [])
                if not products:
                    break
                    
                for p in products:
                    if items_scraped >= self.limit_items: break
                    
                    title = p.get('title')
                    if not title: continue
                    
                    price_data = p.get('priceList', {})
                    price = price_data.get('regularDiscountPrice') or price_data.get('fullPrice')
                    if not price: continue
                    
                    # URL construction
                    old_id = p.get('oldProductId')
                    uid = p.get('_id')
                    listing_url = f"https://delfi.rs/knjige/{old_id}" if old_id else f"https://delfi.rs/proizvod/{uid}"
                    
                    book = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        price=f"RSD {price}",
                        listing_url=listing_url,
                        condition="New"
                    )
                    self.save_item(book)
                    items_scraped += 1
                    
            except Exception as e:
                self.logger.error(f"Failed to parse Delfi API: {e}")
                break

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="roman")
    args = parser.parse_args()
    spider = DelfiRsSpider()
    spider.run(args.query)
