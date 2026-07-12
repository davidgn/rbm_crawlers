import argparse
import random
import re
import time
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class HalfPricedBooksKeSpider(BaseSpider):
    HEADERS = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    }

    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Half Priced Books", territory="Kenya")
        self.base_url = "https://halfpricedbooks.co.ke"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def _get_robust_response(self, url: str, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                headers = self.HEADERS.copy()
                headers["User-Agent"] = random.choice([
                    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15",
                    "Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0"
                ])
                resp = self.client.get(url, headers=headers)
                if resp.status_code in (403, 429, 500, 502, 503, 504):
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

    def run(self):
        self.logger.info(f"Starting Half Priced Books harvester. Limit: {self.limit_pages} pages.")
        
        # Site uses an internal API or simple pagination? Let's hit the main shop page
        url = "https://halfpricedbooks.co.ke/"
        self.logger.info(f"Fetching homepage to discover books: {url}")
        
        try:
            resp = self._get_robust_response(url)
            if resp and resp.status_code == 200:
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
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200:
                return
            soup = BeautifulSoup(resp.text, "html.parser")
            
            title = ""
            title_elem = soup.find("h1", class_="book-title")
            if title_elem: title = title_elem.text.strip()
            
            author = None
            author_elem = soup.find("div", class_="book-author")
            if author_elem: author = author_elem.text.replace("By:", "").strip()
            
            price = None
            price_elem = soup.find("div", class_="book-price")
            if price_elem:
                p_match = re.search(r"[\d]+(?:\.\d+)?", price_elem.text.replace(",", "."))
                if p_match:
                    price = p_match.group(0)
            
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
                price_currency="KES",
                condition="Used", # Mostly pre-loved
                listing_url=url
            )
            item = self.scavenge_metadata(resp.text, item)
            self.save_item(item)
            
        except Exception as e:
            self.logger.error(f"Error scraping detail {url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    args = parser.parse_args()
    spider = HalfPricedBooksKeSpider(limit_pages=args.limit)
    spider.run()
