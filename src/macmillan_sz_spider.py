import re
from bs4 import BeautifulSoup
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing

class MacmillanSzSpider(BaseSpider):
    """
    Spider for Macmillan Education Eswatini.
    Fetches search results, then fetches individual product pages for price/details.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 20):
        super().__init__(platform_name="Macmillan Education", territory="Eswatini")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)
        self.items_scraped = 0

    def run(self, search_term: str = "book"):
        self.logger.info(f"Starting crawler for Macmillan Eswatini. Query: {search_term}")
        
        for page in range(1, self.limit_pages + 1):
            if self.items_scraped >= self.limit_items: break
            
            url = f"https://macmillaneducation.co.sz/search?query={search_term}&page={page}"
            try:
                resp = self.client.get(url)
                soup = BeautifulSoup(resp.text, 'html.parser')
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break
                
            items = soup.find_all('a', class_='list-group-item')
            if not items:
                break
                
            book_links = [a.get('href') for a in items if 'books' in a.text.lower()]
            if not book_links:
                break
                
            for link in book_links:
                if self.items_scraped >= self.limit_items: break
                
                if link.startswith('/'):
                    link = "https://macmillaneducation.co.sz" + link
                    
                self._scrape_book(link)
                
    def _scrape_book(self, url: str):
        try:
            resp = self.client.get(url)
            soup = BeautifulSoup(resp.text, 'html.parser')
            
            title_tag = soup.find('h1')
            if not title_tag: return
            title = title_tag.text.strip()
            
            price_tag = soup.select_one('.price')
            if not price_tag: return
            price = price_tag.text.strip()
            
            book = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                listing_url=url,
                condition="New"
            )
            self.save_item(book)
            self.items_scraped += 1
        except Exception as e:
            self.logger.error(f"Failed to parse {url}: {e}")

if __name__ == "__main__":
    spider = MacmillanSzSpider()
    spider.run()
