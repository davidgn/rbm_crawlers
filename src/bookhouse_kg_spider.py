import httpx
import time
import re
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class BookhouseKgSpider(BaseSpider):
    """
    Spider for BookHouse.kg (Kyrgyzstan).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="BookHouse", territory="Kyrgyzstan")
        self.base_url = "https://bookhouse.kg"
        self.limit_pages = limit_pages
        # Use a mobile user agent as it seemed more stable in probing
        self.client = httpx.Client(
            timeout=30.0, 
            follow_redirects=True, 
            verify=False,
            headers={'User-Agent': 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36'}
        )

    def run(self):
        self.logger.info(f"Starting BookHouse.kg crawler. Limit: {self.limit_pages} pages.")
        
        # We search for common terms to fill the fleet
        search_terms = ["Harry Potter", "Aitmatov", "Classic"]
        
        for term in search_terms:
            for page in range(1, self.limit_pages + 1):
                url = f"{self.base_url}/ru/search/?q={term}&page={page}"
                self.logger.info(f"Fetching {url}")
                
                try:
                    response = self.client.get(url)
                    if response.status_code == 404:
                        break
                    response.raise_for_status()
                    
                    soup = BeautifulSoup(response.text, "html.parser")
                    items = soup.select(".book-inner-slide")
                    if not items:
                        break
                        
                    for item in items:
                        self._parse_item(item)
                        
                except Exception as e:
                    self.logger.error(f"Failed to fetch {url}: {e}")
                    break
                    
                time.sleep(2)

        self.logger.info(f"Finished BookHouse. Scraped {self.items_scraped} items.")

    def _parse_item(self, item_soup):
        title_el = item_soup.select_one(".book_title")
        if not title_el: return
        title = title_el.text.strip()
        
        listing_url = self.base_url + title_el.get('href', '') if title_el.has_attr('href') else None
        
        author_el = item_soup.select_one(".mavish")
        author = author_el.text.strip() if author_el else None
        
        price_val = None
        price_el = item_soup.select_one(".price_container .uk-text-bold span")
        if price_el:
            price_val = f"KGS {price_el.text.strip()}"

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = BookhouseKgSpider(limit_pages=1)
    spider.run()
