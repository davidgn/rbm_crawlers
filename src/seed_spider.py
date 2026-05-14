import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class SeedSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="SE-ED", territory="Thailand")
        self.limit_pages = limit_pages
        self.base_url = "https://m.se-ed.com"

    def run(self):
        self.logger.info(f"Starting SE-ED Thailand Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            # Use mobile view for SE-ED as it's often more scrapable
            context = browser.new_context(
                user_agent="Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1"
            )
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target 'New Releases' or search
                target_url = "https://m.se-ed.com/Product/Main/0" # Mobile book main
                
                for current_page in range(1, self.limit_pages + 1):
                    # SE-ED mobile pagination often uses p=N
                    url = f"{target_url}?p={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links: /Product/Detail/978...
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "/Product/Detail/" in l]))
                    
                    if not product_links: break
                        
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
        # Extract ID (often the ISBN-13)
        item_id_match = re.search(r"Detail/(\d+)", url)
        item_id = item_id_match.group(1) if item_id_match else str(time.time())
        
        self.logger.info(f"Harvesting item: {url}")
        page.goto(url, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(2000)
        
        html_content = page.content()
        
        # CACHE FIRST
        self.cache_html(item_id, html_content)
        
        # Save minimal record
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title="Cached Item",
            listing_url=url,
            condition="New (SE-ED Retail)"
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = SeedSpider(limit_pages=args.limit)
    spider.run()
