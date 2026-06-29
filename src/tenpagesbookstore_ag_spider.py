import json
from curl_cffi import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class TenpagesbookstoreAgSpider(BaseSpider):
    """
    Spider for Ten Pages Bookstore (Antigua and Barbuda).
    Extracts catalog data directly from Next.js state on the homepage.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 20):
        super().__init__(platform_name="Ten Pages Bookstore", territory="Antigua and Barbuda")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)

    def run(self, search_term: str = "book"):
        self.logger.info(f"Starting crawler for Ten Pages Bookstore (AG). Query: {search_term}")
        
        try:
            resp = self.client.get("https://tenpagesbookstore.catalog.kyte.site/")
            if resp.status_code != 200:
                self.logger.warning(f"Failed to fetch homepage, status: {resp.status_code}")
                return
                
            soup = BeautifulSoup(resp.text, 'html.parser')
            next_data = soup.find('script', id='__NEXT_DATA__')
            if not next_data:
                self.logger.error("Could not find __NEXT_DATA__ script block.")
                return
                
            data = json.loads(next_data.string)
            products = data.get('props', {}).get('initialReduxState', {}).get('products', {}).get('allProducts', [])
            
            search_term_lower = search_term.lower()
            items_scraped = 0
            
            for p in products:
                if items_scraped >= self.limit_items: break
                
                title = p.get('name')
                if not title: continue
                
                # Apply search filter locally since we fetched all items
                if search_term_lower not in title.lower() and search_term_lower not in (p.get('description') or '').lower():
                    continue
                
                price = p.get('salePromotionalPrice') or p.get('salePrice')
                if not price: continue
                
                uid = p.get('_id')
                listing_url = f"https://tenpagesbookstore.catalog.kyte.site/p/{uid}"
                
                book = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    price=f"XCD {price}",
                    listing_url=listing_url,
                    condition="New"
                )
                self.save_item(book)
                items_scraped += 1
                
        except Exception as e:
            self.logger.error(f"Failed to parse Ten Pages Bookstore: {e}")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="book")
    args = parser.parse_args()
    spider = TenpagesbookstoreAgSpider()
    spider.run(args.query)
