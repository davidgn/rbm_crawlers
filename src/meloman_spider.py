import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class MelomanSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Meloman", territory="Kazakhstan")
        self.limit_pages = limit_pages
        self.base_url = "https://www.meloman.kz"

    def run(self):
        self.logger.info(f"Starting Meloman Kazakhstan Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target Books category
                target_url = "https://www.meloman.kz/books.html"
                
                for current_page in range(1, self.limit_pages + 1):
                    url = f"{target_url}?p={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="networkidle", timeout=60000)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links in the main product grid
                    # Meloman often uses .product-item-link or similar
                    links = page.evaluate("""() => {
                        const grid = document.querySelector('.products.grid') || document;
                        return Array.from(grid.querySelectorAll('a')).map(a => a.href);
                    }""")
                    
                    # Refined filter: must be .html and NOT a common non-book or system path
                    product_links = list(set([
                        l for l in links 
                        if ".html" in l 
                        and not any(x in l for x in ["/books.html", "/customer/", "/wishlist/", "/press/", "/videogames/", "/candy/"])
                    ]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}.")
                        break
                        
                    for p_url in product_links[:10]: # Limited batch per page for efficiency
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
        # Extract unique ID or slug from URL
        item_id = url.split("/")[-1].replace(".html", "") if "/" in url else str(time.time())
        
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
            condition="New/Kazakhstan Retail"
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = MelomanSpider(limit_pages=args.limit)
    spider.run()
