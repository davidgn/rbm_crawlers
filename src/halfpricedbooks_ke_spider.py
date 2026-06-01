import argparse
import time
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class HalfPricedBooksKeSpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Half Priced Books", territory="Kenya")
        self.base_url = "https://halfpricedbooks.co.ke"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers={
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
        })

    def run(self):
        self.logger.info(f"Starting Half Priced Books harvester. Limit: {self.limit_pages} pages.")
        
        # Site uses an internal API or simple pagination? Let's hit the main shop page
        url = "https://halfpricedbooks.co.ke/"
        self.logger.info(f"Fetching homepage to discover books: {url}")
        
        try:
            resp = self.client.get(url)
            if resp.status_code == 200:
                soup = BeautifulSoup(resp.text, "html.parser")
                links = []
                for a in soup.find_all("a", href=True):
                    href = a.get("href")
                    if href.startswith("/book/"):
                        links.append(f"{self.base_url}{href}")
                        
                links = list(dict.fromkeys(links))
                self.logger.info(f"Found {len(links)} links on homepage.")
                
                for link in links:
                    if link in self._seen_urls: continue
                    self._scrape_detail(link)
                    time.sleep(1)
                    if self.items_scraped >= self.limit_pages * 20: break
                    
        except Exception as e:
            self.logger.error(f"Error fetching {url}: {e}")
                
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _scrape_detail(self, url):
        try:
            resp = self.client.get(url)
            resp.raise_for_status()
            soup = BeautifulSoup(resp.text, "html.parser")
            
            title = ""
            title_elem = soup.find("h1", class_="book-title")
            if title_elem: title = title_elem.text.strip()
            
            author = None
            author_elem = soup.find("div", class_="book-author")
            if author_elem: author = author_elem.text.replace("By:", "").strip()
            
            price = None
            price_elem = soup.find("div", class_="book-price")
            if price_elem: price = price_elem.text.strip()
            
            isbn = None
            isbn_elem = soup.find("div", class_="book-isbn")
            if isbn_elem: isbn = isbn_elem.text.replace("ISBN:", "").strip()
            
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title or "Unknown",
                author=author,
                isbn=isbn,
                price=price,
                condition="Used", # Mostly pre-loved
                listing_url=url
            )
            self.save_item(item)
            
        except Exception as e:
            self.logger.error(f"Error scraping detail {url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    args = parser.parse_args()
    spider = HalfPricedBooksKeSpider(limit_pages=args.limit)
    spider.run()
