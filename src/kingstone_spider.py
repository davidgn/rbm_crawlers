import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class KingstoneSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Kingstone.com.tw", territory="Taiwan")
        self.limit_pages = limit_pages
        self.base_url = "https://www.kingstone.com.tw"

    def run(self):
        self.logger.info(f"Starting Kingstone Taiwan Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target New Releases or a reliable index
                target_url = "https://www.kingstone.com.tw/newbook/book"
                
                for current_page in range(1, self.limit_pages + 1):
                    # Kingstone often uses page parameters
                    url = f"{target_url}?page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links: /basic/201856...
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "/basic/" in l]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}. Scrolling...")
                        page.evaluate("window.scrollBy(0, 1000)")
                        page.wait_for_timeout(2000)
                        links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                        product_links = list(set([l for l in links if "/basic/" in l]))

                    if not product_links: break
                        
                    for p_url in product_links:
                        try:
                            self._harvest_item(page, p_url)
                            page.wait_for_timeout(1500)  # Gentle delay
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, page, url):
        # Extract ID from /basic/12345
        item_id_match = re.search(r"basic/([^/?#]+)", url)
        item_id = item_id_match.group(1) if item_id_match else str(time.time())
        
        # Ensure it's not too long for the filesystem
        if len(item_id) > 100:
            item_id = item_id[-100:]
            
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
            condition="New (Kingstone Retail)"
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = KingstoneSpider(limit_pages=args.limit)
    spider.run()