import re
import json
import os
import time
import base64
from bs4 import BeautifulSoup
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing

class OlxBaSpider(BaseSpider):
    """Bosnia C2C marketplace spider targeting olx.ba."""
    
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(platform_name="OLX.ba", territory="Bosnia and Herzegovina")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.price_currency = "BAM"
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
        self.logger.info(f"Starting OLX.ba harvest for query: {search_term}")
        
        items_scraped = 0
        
        for page in range(1, self.limit_pages + 1):
            if self.limit_items and items_scraped >= self.limit_items:
                break
                
            # OLX.ba search URL structure
            url = f"https://olx.ba/pretraga?q={requests.utils.quote(search_term)}&page={page}"
            self.logger.info(f"Fetching page {page}: {url}")
            
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200:
                self.logger.warning(f"Failed to fetch page {page} or non-200 status code.")
                break
                
            text = resp.text
            start_idx = text.find("window.__NUXT__")
            if start_idx == -1:
                self.logger.warning("Could not find window.__NUXT__ payload on page.")
                break
                
            end_script = text.find("</script>", start_idx)
            block = text[start_idx:end_script].strip()
            if block.endswith(";"):
                block = block[:-1]
                
            func_idx = block.find("(function(")
            return_idx = block.find("{return ")
            close_idx = block.find("}(")
            end_idx = block.rfind(")")
            
            if func_idx == -1 or return_idx == -1 or close_idx == -1:
                self.logger.warning("Failed to locate index positions for Nuxt deserializer.")
                break
                
            args_str = block[func_idx + len("(function("):block.find(")", func_idx)]
            content_str = block[return_idx + len("{return "):close_idx]
            vals_str = block[close_idx + len("}("):end_idx].rstrip(')').strip()
            
            args = [a.strip() for a in args_str.split(',')]
            py_vals_str = vals_str.replace('null', 'None').replace('true', 'True').replace('false', 'False')
            
            try:
                vals = eval(f"({py_vals_str})")
                var_map = dict(zip(args, vals))
            except Exception as e:
                self.logger.error(f"Nuxt payload evaluation failed: {e}")
                break
                
            # Search content_str for item properties
            items = re.finditer(r'id:([a-zA-Z0-9_]+),[^}]*?title:"([^"]+)"', content_str)
            page_items_count = 0
            
            for m in items:
                if self.limit_items and items_scraped >= self.limit_items:
                    break
                    
                lid = m.group(1)
                title = m.group(2)
                real_id = var_map.get(lid, lid)
                
                # Exclude static navigational elements or category ids
                try:
                    int_id = int(real_id)
                except ValueError:
                    continue  # Skip if ID is not numeric
                    
                # Find context around this match to find display_price
                start_pos = m.start()
                context = content_str[start_pos:start_pos+500]
                
                price_match = re.search(r'display_price:([a-zA-Z0-9_$]+)', context)
                if price_match:
                    price_var = price_match.group(1)
                    real_price_str = var_map.get(price_var, "")
                else:
                    price_match = re.search(r'display_price:"([^"]+)"', context)
                    real_price_str = price_match.group(1) if price_match else ""
                
                # De-escape title unicode characters
                try:
                    clean_title = bytes(title, "utf-8").decode("unicode_escape")
                except Exception:
                    clean_title = title
                    
                # Resolve listing URL
                listing_url = f"https://olx.ba/artikal/{real_id}"
                
                # Check description context for signals
                desc_match = re.search(r'description:([a-zA-Z0-9_$]+)', context)
                desc_var = desc_match.group(1) if desc_match else None
                description = var_map.get(desc_var, "") if desc_var else ""
                
                price_val = self.clean_price(real_price_str)
                
                book = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=clean_title,
                    price=price_val,
                    price_currency=self.price_currency if price_val else None,
                    listing_url=listing_url,
                    seller_comments=description if description else None
                )
                
                # Regex signals scavenging
                book = self.scavenge_metadata(description, book)
                
                self.save_item(book)
                items_scraped += 1
                page_items_count += 1
                
            self.logger.info(f"Processed {page_items_count} items from page {page}")
            if page_items_count == 0:
                self.logger.info("No items found on page. Ending search.")
                break
                
            # Politeness delay
            time.sleep(1.0)
            
        self.logger.info(f"Completed OLX.ba crawling. Scraped {items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = OlxBaSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
