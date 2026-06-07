import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class TikiSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Tiki.vn", territory="Vietnam")
        self.limit_pages = limit_pages
        # Tiki Books Category
        self.base_url = "https://tiki.vn/nha-sach-tiki/c8322"

    def run(self):
        self.logger.info(f"Starting Tiki.vn Vietnam Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                for current_page in range(1, self.limit_pages + 1):
                    # Tiki pagination: ?page=N
                    url = f"{self.base_url}?page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        # Use networkidle for Tiki as it has many dynamic components
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        self.human_delay(3000, 7000)
                        self.human_jitter(page)
                        
                        # Scroll to trigger lazy loading of product items
                        page.evaluate("window.scrollBy(0, 2000)")
                        self.human_delay(2000, 4000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links: -p[id].html
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([
                        l for l in links 
                        if "-p" in l and ".html" in l 
                        and not any(x in l for x in ["/customer/", "/checkout/", "/wishlist/", "/account/"])
                    ]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}.")
                        # Try one more scroll
                        page.evaluate("window.scrollTo(0, document.body.scrollHeight)")
                        self.human_delay(3000, 5000)
                        links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                        product_links = list(set([l for l in links if "-p" in l and ".html" in l]))

                    if not product_links:
                        break
                        
                    for p_url in product_links[:15]: # Batch per page
                        try:
                            self._harvest_item(context, p_url)
                            self.human_delay(1500, 3000)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, context, url):
        # Extract ID from slug-p12345.html
        item_id_match = re.search(r"-p(\d+)\.html", url)
        item_id = item_id_match.group(1) if item_id_match else str(time.time())
        
        # Check if already cached (meta check is faster than stat)
        meta_path = self.cache_dir / f"{item_id}.meta.json"
        if meta_path.exists():
            return

        p_page = context.new_page()
        Stealth().apply_stealth_sync(p_page)
        
        try:
            self.logger.info(f"Harvesting item: {url}")
            p_page.goto(url, wait_until="domcontentloaded", timeout=60000)
            self.human_delay(2000, 4000)
            
            html_content = p_page.content()
            self.cache_html(item_id, html_content, url=url)
            
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title="Cached Item",
                listing_url=url,
                condition="New (Tiki.vn Retail)"
            )
            self.save_item(item)
        finally:
            p_page.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = TikiSpider(limit_pages=args.limit)
    spider.run()
