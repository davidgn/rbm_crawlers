import re
import json
import os
import time
from bs4 import BeautifulSoup
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing

class OglasiMeSpider(BaseSpider):
    """Montenegro C2C marketplace spider targeting oglasi.me."""
    
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(platform_name="Oglasi.me", territory="Montenegro")
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
        self.logger.info(f"Starting Oglasi.me harvest for query: {search_term}")
        
        items_scraped = 0
        category_whitelist = ("literatura", "knjige", "stripovi", "dječiji svijet", "kolekcionarstvo", "edukacija", "udžbenici", "knjige i časopisi", "književnost")
        
        for page in range(1, self.limit_pages + 1):
            if self.limit_items and items_scraped >= self.limit_items:
                break
                
            # Oglasi.me expects query in parameter q, page in pageNumber
            url = f"https://oglasi.me/pretraga?q={requests.utils.quote(search_term)}&pageNumber={page}"
            self.logger.info(f"Fetching page {page}: {url}")
            
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200:
                self.logger.warning(f"Failed to fetch page {page} or non-200 status code.")
                break
                
            soup = BeautifulSoup(resp.text, 'html.parser')
            next_data = soup.find('script', id='__NEXT_DATA__')
            if not next_data:
                self.logger.warning("Could not find __NEXT_DATA__ script block.")
                break
                
            try:
                data = json.loads(next_data.string)
                elements = data['props']['initialProps']['pageProps']['state']['ads']['list']['elements']
            except Exception as e:
                self.logger.error(f"Failed to parse __NEXT_DATA__ payload: {e}")
                break
                
            page_items_count = 0
            
            for el in elements:
                if self.limit_items and items_scraped >= self.limit_items:
                    break
                    
                # Extract and check category
                parent_cats = el.get("parentCategories", [])
                category = parent_cats[0].get("title", "Unknown") if parent_cats else "Unknown"
                
                # Check whitelist
                if category.lower() != "unknown":
                    is_whitelisted = False
                    for w in category_whitelist:
                        if w in category.lower():
                            is_whitelisted = True
                            break
                    if not is_whitelisted:
                        continue  # Skip vehicles, real estate, etc.
                
                title = el.get("titleCompiled") or "No Title"
                seo = el.get("seo")
                if not seo:
                    continue
                listing_url = f"https://oglasi.me/oglas/{seo}"
                
                price_num = el.get("price")
                price_str = str(price_num) if price_num is not None else ""
                price_val = self.clean_price(price_str)
                
                description = el.get("description") or ""
                
                book = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    price=price_val,
                    price_currency=self.price_currency if price_val else None,
                    listing_url=listing_url,
                    category=category if category != "Unknown" else None,
                    seller_comments=description if description else None
                )
                
                # Use base class scavenging
                book = self.scavenge_metadata(description if description else title, book)
                
                self.save_item(book)
                items_scraped += 1
                page_items_count += 1
                
            self.logger.info(f"Processed {page_items_count} items from page {page}")
            if len(elements) < 60:
                self.logger.info("Fewer than 60 items on page. Ending search.")
                break
                
            # Politeness delay
            time.sleep(1.0)
            
        self.logger.info(f"Completed Oglasi.me crawling. Scraped {items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = OglasiMeSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
