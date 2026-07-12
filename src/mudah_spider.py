import argparse
import random
import time
import re
import httpx
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class MudahSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Mudah.my", territory="Malaysia")
        self.limit_pages = limit_pages
        self.base_url = "https://www.mudah.my"

    def _get_robust_response(self, url: str, max_retries: int = 3):
        headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        }
        with httpx.Client(timeout=30.0, follow_redirects=True, headers=headers) as client:
            for attempt in range(max_retries):
                try:
                    headers["User-Agent"] = random.choice([
                        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15",
                        "Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0"
                    ])
                    resp = client.get(url, headers=headers)
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
        self.logger.info(f"Starting Mudah Malaysia Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target Books category: Hobbies & Collectibles -> Books/Textbooks
                target_url = "https://www.mudah.my/malaysia/hobbies-and-collectibles-for-sale/books-and-textbooks"
                
                for current_page in range(1, self.limit_pages + 1):
                    # Mudah pagination: ?o=N
                    url = f"{target_url}?o={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links: /ad/item-title-123456789
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "/ad/" in l and re.search(r"-\d+$", l)]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}.")
                        break
                        
                    for p_url in product_links:
                        try:
                            self._harvest_item(page, p_url)
                            page.wait_for_timeout(1000)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, page, url):
        item_id_match = re.search(r"-(\d+)$", url)
        item_id = item_id_match.group(1) if item_id_match else str(time.time())
        
        self.logger.info(f"Harvesting item: {url}")
        page.goto(url, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(2000)
        
        html_content = page.content()
        
        # CACHE FIRST
        self.cache_html(item_id, html_content)
        
        title = "Cached Item"
        price_val = None
        try:
            h1 = page.query_selector("h1")
            if h1:
                title = h1.inner_text().strip()
            price_el = page.query_selector("div[data-testid='mw-ad-price'], span:has-text('RM')")
            if price_el:
                p_match = re.search(r"[\d]+(?:\.\d+)?", price_el.inner_text().replace(",", ""))
                if p_match:
                    price_val = p_match.group(0)
        except Exception:
            pass

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=price_val,
            price_currency="MYR",
            listing_url=url,
            condition="Used (Mudah.my Marketplace)"
        )
        item = self.scavenge_metadata(html_content, item)
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = MudahSpider(limit_pages=args.limit)
    spider.run()
