import re
import json
import os
import time
import base64
from bs4 import BeautifulSoup
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing

class PatuljakMeSpider(BaseSpider):
    """Montenegro C2C marketplace spider targeting patuljak.me."""
    
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(platform_name="Patuljak.me", territory="Montenegro")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.price_currency = "EUR"
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)

    def _get_robust_response(self, url: str, max_retries: int = 3):
        headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8",
            "Accept-Language": "en-US,en;q=0.9",
        }
        for attempt in range(max_retries):
            try:
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

    def clean_price(self, price_str: str) -> str | None:
        if not price_str:
            return None
        price_str = price_str.strip().lower()
        if "upit" in price_str or "dogovor" in price_str or "besplatno" in price_str:
            return None
        price_str = re.sub(r'[^\d.,]', '', price_str)
        if not price_str:
            return None
        if ',' in price_str and '.' in price_str:
            if price_str.rfind(',') > price_str.rfind('.'):
                price_str = price_str.replace('.', '').replace(',', '.')
            else:
                price_str = price_str.replace(',', '')
        elif ',' in price_str:
            parts = price_str.split(',')
            if len(parts) == 2 and len(parts[1]) <= 2:
                price_str = price_str.replace(',', '.')
            else:
                price_str = price_str.replace(',', '')
        try:
            val = float(price_str)
            return f"{val:.2f}"
        except ValueError:
            return None

    def run(self):
        search_term = os.getenv("RBM_SEARCH_TERM", "knjiga")
        self.logger.info(f"Starting Patuljak.me harvest for query: {search_term}")
        
        # Patuljak.me expects query in base64 encoding
        b64_query = base64.b64encode(search_term.encode('utf-8')).decode('utf-8')
        
        items_scraped = 0
        category_whitelist = ("literatura", "knjige", "stripovi", "dječiji svijet", "kolekcionarstvo", "edukacija", "udžbenici")
        
        for page in range(1, self.limit_pages + 1):
            if self.limit_items and items_scraped >= self.limit_items:
                break
                
            # Patuljak.me URL structure
            url = f"https://patuljak.me/pretraga/{page}/20/sve/?pretraga={b64_query}"
            self.logger.info(f"Fetching page {page}: {url}")
            
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200:
                self.logger.warning(f"Failed to fetch page {page} or non-200 status code.")
                break
                
            soup = BeautifulSoup(resp.text, 'html.parser')
            products = soup.select('.product__v--l0')
            
            page_items_count = 0
            
            for p in products:
                if self.limit_items and items_scraped >= self.limit_items:
                    break
                    
                # Extract and check category
                cat_items = p.select('.product__v--l1---right li')
                category = cat_items[0].text.strip() if cat_items else "Unknown"
                
                # Check whitelist
                if category.lower() != "unknown":
                    is_whitelisted = False
                    for w in category_whitelist:
                        if w in category.lower():
                            is_whitelisted = True
                            break
                    if not is_whitelisted:
                        continue  # Skip vehicles, real estate, etc.
                
                title_el = p.select_one('h5')
                title = title_el.text.strip() if title_el else "No Title"
                
                link_el = p.select_one('a[href]')
                link = link_el['href'] if link_el else ""
                if not link:
                    continue
                if not link.startswith('http'):
                    link = f"https://patuljak.me{link}"
                    
                price_el = p.select_one('.product__v--l1---tag_price')
                price_str = price_el.text.strip() if price_el else ""
                
                price_val = self.clean_price(price_str)
                
                book = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    price=price_val,
                    price_currency=self.price_currency if price_val else None,
                    listing_url=link,
                    category=category if category != "Unknown" else None
                )
                
                # Use base class scavenging
                book = self.scavenge_metadata(title, book)
                
                self.save_item(book)
                items_scraped += 1
                page_items_count += 1
                
            self.logger.info(f"Processed {page_items_count} items from page {page}")
            if len(products) < 20:
                # Page has fewer than standard items, likely reached last page
                self.logger.info("Fewer than 20 items on page. Ending search.")
                break
                
            # Politeness delay
            time.sleep(1.0)
            
        self.logger.info(f"Completed Patuljak.me crawling. Scraped {items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = PatuljakMeSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
