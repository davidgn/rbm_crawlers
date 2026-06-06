import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class JarirSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Jarir Bookstore", territory="Middle East")
        self.limit_pages = limit_pages
        self.base_url = "https://www.jarir.com"

    def run(self):
        self.logger.info(f"Starting Jarir Middle East Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target Arabic Books or English Books
                target_url = "https://www.jarir.com/arabic-books.html"
                
                for current_page in range(1, self.limit_pages + 1):
                    # Jarir pagination often uses ?p=N
                    url = f"{target_url}?p={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="networkidle", timeout=60000)
                        self.human_delay(2000, 4000)
                        self.human_jitter(page)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links
                    # Jarir paths typically follow: /item-name-123456.html
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "jarir.com/" in l and l.endswith(".html") and not any(x in l for x in ["/customer/", "/books.html", "/arabic-books.html"])]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}.")
                        break
                        
                    for p_url in product_links[:10]:
                        try:
                            self._harvest_item(page, p_url)
                            self.human_delay(1000, 2500)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, page, url):
        # Extract ID from /item-name-123456.html
        item_id_match = re.search(r"-(\d+)\.html$", url)
        item_id = item_id_match.group(1) if item_id_match else str(time.time())
        
        self.logger.info(f"Harvesting item: {url}")
        page.goto(url, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(2000)
        
        html_content = page.content()
        self.cache_html(item_id, html_content)
        
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title="Cached Item",
            listing_url=url,
            condition="New (Jarir Retail)"
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = JarirSpider(limit_pages=args.limit)
    spider.run()
