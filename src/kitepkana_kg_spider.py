import httpx
import time
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class KitepkanaKgSpider(BaseSpider):
    """
    Spider for Kitepkana.kg (Kyrgyzstan) - focused on Kyrgyz language titles.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="Kitepkana", territory="Kyrgyzstan")
        self.base_url = "https://kitepkana.kg"
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, 
            follow_redirects=True, 
            verify=False,
            headers={'User-Agent': 'Mozilla/5.0'}
        )

    def run(self):
        self.logger.info(f"Starting Kitepkana.kg crawler. Limit: {self.limit_pages} pages.")
        
        # Searching for 'kitep' (book) to get a variety of results
        search_terms = ["kitep", "manas", "tarih"]
        
        for term in search_terms:
            for page in range(1, self.limit_pages + 1):
                url = f"{self.base_url}/search?q={term}&page={page}"
                self.logger.info(f"Fetching {url}")
                
                try:
                    response = self.client.get(url)
                    if response.status_code == 404:
                        break
                    response.raise_for_status()
                    
                    soup = BeautifulSoup(response.text, "html.parser")
                    # Generic item containers based on common e-commerce structures
                    items = soup.select(".product, .item, .book-card")
                    if not items:
                        break
                        
                    for item in items:
                        self._parse_item(item)
                        
                except Exception as e:
                    self.logger.error(f"Failed to fetch {url}: {e}")
                    break
                    
                time.sleep(2)

    def _parse_item(self, item_soup):
        title_el = item_soup.select_one("h3, .title, .product-title")
        if not title_el: return
        title = title_el.text.strip()
        
        link_el = item_soup.select_one("a")
        listing_url = self.base_url + link_el.get('href', '') if link_el and link_el.has_attr('href') else None
        
        price_el = item_soup.select_one(".price, .amount")
        price_val = f"KGS {price_el.text.strip()}" if price_el else None

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=None,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = KitepkanaKgSpider(limit_pages=1)
    spider.run()
