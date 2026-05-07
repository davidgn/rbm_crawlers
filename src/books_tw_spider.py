import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BooksTwSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Books.com.tw", territory="Taiwan")
        self.limit_pages = limit_pages
        self.base_url = "https://www.books.com.tw"

    def run(self):
        self.logger.info(f"Starting Books.com.tw Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Optimized Start URL: 30-day new arrivals (more stable than daily)
                start_url = "https://www.books.com.tw/web/books_n_newbook_02/?o=1&v=1"
                
                for current_page in range(1, self.limit_pages + 1):
                    url = f"{start_url}&page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        continue
                        
                    # Extract product links using a broader selector
                    # Books.com.tw often uses .item, .msg, or simple <a> tags in a list
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "/products/" in l and ("?loc=" in l or "loc=" in l)]))
                    
                    if not product_links:
                        self.logger.warning("No product links found with primary pattern. Trying secondary...")
                        product_links = list(set([l for l in links if "/products/" in l and l.split("/products/")[1][:10].isdigit()]))

                    self.logger.info(f"Found {len(product_links)} products on index page.")
                    
                    for plink in product_links:
                        try:
                            self._harvest_item(page, plink)
                            page.wait_for_timeout(1000)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {plink}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Harvest failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, page, url):
        # Extract unique ID (e.g., 0011049935)
        # URL pattern: https://www.books.com.tw/products/0011049935?loc=...
        item_id_match = re.search(r"/products/(\d+)", url)
        item_id = item_id_match.group(1) if item_id_match else str(time.time())
        
        self.logger.info(f"Harvesting item: {url}")
        page.goto(url, wait_until="domcontentloaded", timeout=30000)
        page.wait_for_timeout(1500)
        
        html_content = page.content()
        
        # CACHE FIRST
        self.cache_html(item_id, html_content)
        
        # Save minimal record
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title="Cached Item", # Deep title will come from AI
            listing_url=url,
            condition="Cached for AI extraction"
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = BooksTwSpider(limit_pages=args.limit)
    spider.run()
