import argparse
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class SeedSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="SE-ED", territory="Thailand")
        self.limit_pages = limit_pages
        self.base_url = "https://www.se-ed.com"

    def run(self):
        self.logger.info(f"Starting SE-ED Thailand Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Modern Next.js Search URL for physical books
                target_url = "https://www.se-ed.com/search?filter.productTypes=PRODUCT_TYPE_BOOK_PHYSICAL"
                
                for current_page in range(1, self.limit_pages + 1):
                    # Trying the most likely pagination pattern for Next.js sites or SE-ED specific
                    url = f"{target_url}&page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="networkidle", timeout=60000)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links: /physical/slug-id
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "/physical/" in l]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}. Scrolling...")
                        page.evaluate("window.scrollBy(0, 2000)")
                        page.wait_for_timeout(2000)
                        links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                        product_links = list(set([l for l in links if "/physical/" in l]))

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
        # Extract unique slug/id from /physical/slug-id
        # Example: https://www.se-ed.com/physical/slug-id
        slug = url.split("/")[-1] if "/" in url else str(time.time())
        item_id = slug.split("-")[-1] if "-" in slug else slug
        
        # Ensure it's not too long for the filesystem
        if len(item_id) > 100:
            item_id = item_id[-100:]
        
        self.logger.info(f"Harvesting item: {url}")
        page.goto(url, wait_until="networkidle", timeout=60000)
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
