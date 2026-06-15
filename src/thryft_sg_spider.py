import argparse
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class ThryftSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Thryft", territory="Singapore")
        self.limit_pages = limit_pages
        self.base_url = "https://thryft.sg/collections/all-books"

    def run(self):
        self.logger.info(f"Starting Thryft Singapore Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                for current_page in range(1, self.limit_pages + 1):
                    url = f"{self.base_url}?page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        self.human_delay(2000, 4000)
                        self.human_jitter(page)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links: /products/[slug]
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "/products/" in l]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}.")
                        break
                        
                    for p_url in product_links[:10]:
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
        item_id = url.split("/")[-1] if "/" in url else str(time.time())
        meta_path = self.cache_dir / f"{item_id}.meta.json"
        if meta_path.exists(): return

        p_page = context.new_page()
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
                condition="Used (Thryft Singapore)"
            )
            self.save_item(item)
        finally:
            p_page.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = ThryftSpider(limit_pages=args.limit)
    spider.run()
