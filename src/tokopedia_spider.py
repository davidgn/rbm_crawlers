import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class TokopediaSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Tokopedia", territory="Indonesia")
        self.limit_pages = limit_pages
        # Tokopedia Books Category
        self.base_url = "https://www.tokopedia.com/p/buku"

    def run(self):
        self.logger.info(f"Starting Tokopedia Indonesia Harvest (Cache-First, Firefox Bridge). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            # TOKOPEDIA SPECIAL: Must use Firefox to bypass protocol blocks
            browser = p.firefox.launch(headless=True)
            context = browser.new_context(
                user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0",
                viewport={'width': 1280, 'height': 800}
            )
            page = context.new_page()
            # Note: Stealth() is chromium-centric but we'll apply it just in case or skip
            
            try:
                for current_page in range(1, self.limit_pages + 1):
                    # Tokopedia pagination often uses ?page=N
                    url = f"{self.base_url}?page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        self.human_delay(5000, 10000)
                        
                        # Scroll to trigger lazy loading
                        page.evaluate("window.scrollBy(0, 1500)")
                        self.human_delay(3000, 5000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links
                    # Tokopedia product links are very broad: tokopedia.com/[shop]/[slug]
                    # But they usually live in specific grid containers
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    
                    # Filter for links that have at least 4 slashes and aren't system pages
                    product_links = list(set([
                        l for l in links 
                        if "tokopedia.com/" in l 
                        and l.count('/') >= 4 
                        and not any(x in l for x in ["/p/", "/discovery/", "/search", "/cart", "/register", "/login", "/help"])
                    ]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}. Scrolling deeper...")
                        page.evaluate("window.scrollTo(0, document.body.scrollHeight)")
                        self.human_delay(5000, 7000)
                        links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                        product_links = list(set([l for l in links if "tokopedia.com/" in l and l.count('/') >= 4]))

                    if not product_links:
                        break
                        
                    for p_url in product_links[:10]: # Batch per page
                        try:
                            self._harvest_item(context, p_url)
                            self.human_delay(2000, 4000)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, context, url):
        # Extract ID from tokopedia.com/[shop]/[slug] -> use slug as ID
        item_id = url.rstrip('/').split("/")[-1] if "/" in url else str(time.time())
        
        # Check if already cached
        meta_path = self.cache_dir / f"{item_id}.meta.json"
        if meta_path.exists():
            return

        p_page = context.new_page()
        try:
            self.logger.info(f"Harvesting item: {url}")
            p_page.goto(url, wait_until="domcontentloaded", timeout=60000)
            self.human_delay(3000, 6000)
            
            html_content = p_page.content()
            self.cache_html(item_id, html_content, url=url)
            
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title="Cached Item",
                listing_url=url,
                condition="New/Used (Tokopedia Indonesia)"
            )
            self.save_item(item)
        finally:
            p_page.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = TokopediaSpider(limit_pages=args.limit)
    spider.run()
