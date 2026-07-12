import argparse
import random
import time
import re
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class BooktionaryBdSpider(BaseSpider):
    HEADERS = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    }

    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Booktionary.com.bd", territory="Bangladesh")
        self.base_url = "https://booktionary.com.bd"
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
        self.logger.info(f"Starting Booktionary.com.bd harvester. Limit: {self.limit_pages} pages.")
        
        # We can browse by general book list or categories
        # Let's try the academic-books as a starting point, or the home page for discovery
        categories = ["academic-books", "general-books", "medical-books", "university-books", "old-books"]
        
        for cat in categories:
            url = f"{self.base_url}/{cat}"
            self.logger.info(f"Fetching category: {url}")
            
            try:
                resp = self._get_robust_response(url)
                if not resp or resp.status_code != 200: continue
                
                soup = BeautifulSoup(resp.text, "html.parser")
                # Find product cards
                detail_links = soup.find_all("a", href=lambda h: h and "/book-details/" in h)
                links = list(dict.fromkeys([l.get("href") for l in detail_links]))
                
                self.logger.info(f"Found {len(links)} links in {cat}")
                
                for link in links:
                    if link in self._seen_urls: continue
                    self._scrape_detail(link)
                    time.sleep(1)
                    if self.items_scraped >= self.limit_pages * 20: break
                    
            except Exception as e:
                self.logger.error(f"Error fetching {url}: {e}")

    def _scrape_detail(self, url):
        try:
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200:
                return
            soup = BeautifulSoup(resp.text, "html.parser")
            
            title = soup.find("h3", class_="title-detail").text.strip() if soup.find("h3", class_="title-detail") else "Unknown"
            
            author_elem = soup.find("a", href=re.compile(r"/writer-details/"))
            author = author_elem.text.strip() if author_elem else None
            
            publisher_elem = soup.find("a", href=re.compile(r"/publisher-details/"))
            publisher = publisher_elem.text.strip() if publisher_elem else None
            
            # Check for Old Price
            price_old = None
            old_card = soup.find("div", class_="card__two")
            if old_card:
                price_elem = old_card.find("h3")
                if price_elem:
                    p_match = re.search(r"[\d]+(?:\.\d+)?", price_elem.text.replace("৳", "").replace(",", "."))
                    if p_match:
                        price_old = p_match.group(0)
            
            # If no old price, maybe it is only new
            price_new = None
            new_card = soup.find("div", class_="card__one")
            if new_card:
                price_elem = new_card.find("h3")
                if price_elem:
                    # Clean up old-price span if it exists inside h3
                    for s in price_elem.find_all("span", class_="old-price"):
                        s.decompose()
                    p_match = re.search(r"[\d]+(?:\.\d+)?", price_elem.text.replace("৳", "").replace(",", "."))
                    if p_match:
                        price_new = p_match.group(0)

            # Metadata from text
            edition = None
            edition_match = re.search(r"Edition:\s*(.*)", soup.text)
            if edition_match:
                edition = edition_match.group(1).split("\n")[0].strip()

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=author,
                publisher=publisher,
                edition=edition,
                price=price_old or price_new,
                price_currency="BDT",
                condition="Old" if price_old else "New",
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
    spider = BooktionaryBdSpider(limit_pages=args.limit)
    spider.run()
