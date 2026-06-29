import re
from curl_cffi import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class IimMoSpider(BaseSpider):
    """
    Spider for International Institute of Macau (IIM) Bookshop.
    Uses Joomla/VirtueMart CMS.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 50):
        super().__init__(platform_name="IIM Bookshop", territory="Macao")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)

    def run(self, search_term: str = "macau"):
        self.logger.info(f"Starting crawler for IIM Macao. Query: {search_term}")
        
        items_scraped = 0
        limit_per_page = 12
        
        for page in range(self.limit_pages):
            if items_scraped >= self.limit_items: break
            
            limitstart = page * limit_per_page
            url = f"https://www.iimacau.org.mo/bookshop/index.php/en/?search=true&keyword={search_term}&limitstart={limitstart}&option=com_virtuemart&view=category&virtuemart_category_id=0"
            
            try:
                resp = self.client.get(url)
                if resp.status_code != 200:
                    self.logger.warning(f"Failed to fetch IIM, status: {resp.status_code}")
                    break
                    
                soup = BeautifulSoup(resp.text, 'html.parser')
                products = soup.select('.product')
                if not products:
                    break
                    
                for p in products:
                    if items_scraped >= self.limit_items: break
                    
                    title_elem = p.select_one('h2 a')
                    if not title_elem: continue
                    title = title_elem.text.strip()
                    
                    # URL is relative, need to prepend base URL
                    link = title_elem.get('href')
                    if not link: continue
                    if link.startswith('/'): link = "https://www.iimacau.org.mo" + link
                    
                    price_elem = p.select_one('.PricesalesPrice')
                    if not price_elem: continue
                    price = price_elem.text.strip()
                    
                    book = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        price=price,
                        listing_url=link,
                        condition="New"
                    )
                    self.save_item(book)
                    items_scraped += 1
                    
            except Exception as e:
                self.logger.error(f"Failed to parse IIM Macao: {e}")
                break

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="macau")
    args = parser.parse_args()
    spider = IimMoSpider()
    spider.run(args.query)
