import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class KaideeSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Kaidee", territory="Thailand")
        self.limit_pages = limit_pages
        # Category: Books / Newspapers / Magazines
        self.base_url = "https://www.kaidee.com/c12-books_newspapers_magazines"

    def run(self):
        self.logger.info(f"Starting Kaidee Thailand Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                for current_page in range(1, self.limit_pages + 1):
                    # Kaidee uses ?p=N for pagination
                    url = f"{self.base_url}?p={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links
                    # Kaidee product URLs typically follow: /product-368...
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "/product-" in l]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}. Stopping.")
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
        # Extract ID from /product-368739116
        item_id_match = re.search(r"product-(\d+)", url)
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
            title="Cached Item", # Deep title will come from AI
            listing_url=url,
            condition="Used (Kaidee Marketplace)"
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = KaideeSpider(limit_pages=args.limit)
    spider.run()
