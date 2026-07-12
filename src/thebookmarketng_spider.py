import argparse
import random
import time
import re
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class TheBookMarketNgSpider(BaseSpider):
    HEADERS = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    }

    def __init__(self, limit_pages=10):
        super().__init__(platform_name="The BookMarketNG", territory="Nigeria")
        self.base_url = "https://thebookmarketng.com"
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
        self.logger.info(f"Starting The BookMarketNG harvester. Limit: {self.limit_pages} pages.")
        
        # Browse WooCommerce shop base
        for page_num in range(1, self.limit_pages + 1):
            url = f"{self.base_url}/books/page/{page_num}/" if page_num > 1 else f"{self.base_url}/books/"
            self.logger.info(f"Fetching shop page {page_num}: {url}")
            
            try:
                resp = self._get_robust_response(url)
                if not resp or resp.status_code != 200:
                    self.logger.info("Reached end of pagination or hit error.")
                    break
                    
                soup = BeautifulSoup(resp.text, "html.parser")
                products = soup.find_all("a", class_="woocommerce-LoopProduct-link")
                links = list(dict.fromkeys([p.get("href") for p in products if p.get("href")]))
                
                self.logger.info(f"Found {len(links)} links on page {page_num}")
                if not links: break
                
                for link in links:
                    if link in self._seen_urls: continue
                    self._scrape_detail(link)
                    time.sleep(1)
                    
            except Exception as e:
                self.logger.error(f"Error fetching {url}: {e}")
                
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _scrape_detail(self, url):
        try:
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200:
                return
            soup = BeautifulSoup(resp.text, "html.parser")
            
            # Title
            title_elem = soup.find("h1", class_="product_title")
            title = title_elem.text.strip() if title_elem else "Unknown"
            
            # Price
            price = None
            price_elem = soup.find("p", class_="price")
            if price_elem:
                bdi = price_elem.find("bdi")
                if bdi:
                    p_match = re.search(r"[\d]+(?:\.\d+)?", bdi.text.replace(",", "."))
                    if p_match:
                        price = p_match.group(0)
            
            # Description (Seller Comments)
            comments = None
            desc_elem = soup.find("div", class_="woocommerce-product-details__short-description")
            if desc_elem:
                comments = desc_elem.text.strip()
                
            # Categories
            category = None
            cat_elem = soup.find("span", class_="posted_in")
            if cat_elem:
                cats = [a.text.strip() for a in cat_elem.find_all("a")]
                category = ", ".join(cats)
                
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                price_currency="NGN",
                category=category,
                condition="Old", # Assumed default for pre-loved marketplace unless stated
                seller_comments=comments,
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
    spider = TheBookMarketNgSpider(limit_pages=args.limit)
    spider.run()
