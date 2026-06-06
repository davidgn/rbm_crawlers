import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class AsaxiySpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Asaxiy", territory="Uzbekistan")
        self.limit_pages = limit_pages
        self.base_url = "https://asaxiy.uz"

    def run(self):
        self.logger.info(f"Starting Asaxiy Uzbekistan Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target Books category
                target_url = "https://asaxiy.uz/product/knigi"
                
                for current_page in range(1, self.limit_pages + 1):
                    # Asaxiy pagination: ?page=N
                    url = f"{target_url}?page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links: /product/knigi/title or /product/title (if in knigi category)
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    # Refine: must contain /knigi/ or be a direct book-like slug found on this page
                    product_links = list(set([
                        l for l in links 
                        if "/product/" in l 
                        and any(x in l for x in ["/knigi", "/kitoblar", "/badiy"])
                        and l != target_url
                    ]))
                    
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
        # Extract unique slug from /product/slug
        item_id = url.split("/")[-1] if "/" in url else str(time.time())
        
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
            condition="New/Uzbekistan Retail"
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = AsaxiySpider(limit_pages=args.limit)
    spider.run()
