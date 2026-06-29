import httpx
from bs4 import BeautifulSoup
import re
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class VitamineDzSpider(BaseSpider):
    """
    Spider for Vitamine.dz (Algeria).
    Bypasses Google CSE by crawling the static category tree directly.
    """
    def __init__(self, limit_pages=50, **kwargs):
        super().__init__(platform_name="Vitamine.dz", territory="Algeria")
        self.limit_pages = limit_pages
        self.base_url = "https://www.vitamine.dz"
        self.client = httpx.Client(
            timeout=30.0,
            verify=False,
            headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'}
        )

    def run(self, search_term=None):
        self.logger.info("Starting Vitamine.dz Category Spider.")
        
        # 1. Fetch category page to extract category IDs
        try:
            r = self.client.get(f"{self.base_url}/fr/shop")
            r.raise_for_status()
            soup = BeautifulSoup(r.text, 'html.parser')
            cat_links = soup.find_all('a', href=re.compile(r'/fr-(\d+)-1\.html$'))
            cat_ids = set()
            for a in cat_links:
                m = re.search(r'/fr-(\d+)-1\.html$', a['href'])
                if m:
                    cat_ids.add(int(m.group(1)))
            
            self.logger.info(f"Found {len(cat_ids)} categories to crawl: {cat_ids}")
            
            # Limit for testing if needed
            if not cat_ids:
                # fallback common book categories observed
                cat_ids = [22, 9, 25, 4, 5, 6, 7, 8]
                
        except Exception as e:
            self.logger.error(f"Failed to fetch categories: {e}")
            cat_ids = [22] # fallback to pedagogiques
            
        for cat_id in list(cat_ids)[:10]: # Crawl up to 10 categories
            self.logger.info(f"Crawling Category {cat_id}")
            self._crawl_category(cat_id)
            
        self.logger.info(f"Finished Vitamine.dz. Scraped {self.items_scraped} items.")

    def _crawl_category(self, cat_id):
        last_id = 0
        pages = 0
        
        while pages < self.limit_pages:
            url = f"{self.base_url}/getMoreData.php?lastId={last_id}&cat={cat_id}&lg=fr"
            try:
                r = self.client.get(url)
                r.raise_for_status()
                
                # Check if it returned any products
                if 'onClick="add(' not in r.text:
                    break
                    
                soup = BeautifulSoup(r.text, 'html.parser')
                products = soup.find_all('div', class_='bottom-grid1')
                if not products:
                    break
                    
                for p in products:
                    self._parse_item(p)
                    
                # Increment pagination - getMoreData.php usually uses an offset or ID. 
                # If they use `lastId=0`, `lastId=12`, etc., it's usually an offset. 
                # We'll increment by the number of products returned.
                last_id += len(products)
                pages += 1
                
            except Exception as e:
                self.logger.error(f"Error fetching category {cat_id} page {pages}: {e}")
                break

    def _parse_item(self, item_soup):
        # Extract from the onclick attribute: onClick="add('fr','581','TITLE',...,'500',...)"
        img = item_soup.find('img', onclick=True)
        if not img:
            return
            
        onclick = img.get('onclick', '')
        # regex to match add('...', '...', ...)
        m = re.search(r"add\((.*?)\)", onclick)
        if m:
            args_str = m.group(1)
            # split by comma, handling quotes roughly
            args = [a.strip().strip("'").strip('"') for a in args_str.split("','")]
            if len(args) >= 6:
                item_id = args[1]
                title = args[2]
                price = args[5]
                
                listing_url = f"{self.base_url}/fr/{item_id}.php"
                price_val = f"DA {price}"
                
                book = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    price=price_val,
                    listing_url=listing_url,
                )
                self.save_item(book)
                self.items_scraped += 1

if __name__ == "__main__":
    spider = VitamineDzSpider(limit_pages=3)
    spider.run()
