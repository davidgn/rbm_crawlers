import argparse
import time
from playwright.sync_api import sync_playwright
from models import BookListing
from base_spider import BaseSpider

class AsaxiySpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Asaxiy", territory="Uzbekistan")
        self.limit_pages = limit_pages
        self.base_url = "https://asaxiy.uz"

    def run(self):
        self.logger.info(f"Starting Asaxiy Uzbekistan Harvest (Cache-First, Firefox Bridge). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            # Escalate evasion: Use Firefox to bypass strict HTTP/2 protocol fingerprinting blocks
            browser = p.firefox.launch(headless=True)
            context = browser.new_context(
                user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0",
                viewport={'width': 1280, 'height': 800}
            )
            page = context.new_page()
            
            try:
                target_url = "https://asaxiy.uz/product/knigi"
                for current_page in range(1, self.limit_pages + 1):
                    url = f"{target_url}?page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        # Chunked Navigation: Stop loading once core DOM is ready to avoid Cloudflare timeout traps
                        page.goto(url, wait_until="domcontentloaded", timeout=45000)
                        try:
                            page.wait_for_selector(".product__item", timeout=15000)
                        except: pass
                        page.evaluate("window.stop()")
                        self.human_delay(2000, 5000)
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
                        
                    for p_url in product_links[:10]:
                        try:
                            self._harvest_item(context, p_url)
                            self.human_delay(1000, 3000)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, context, url):
        # Extract unique slug from /product/slug
        item_id = url.split("/")[-1] if "/" in url else str(time.time())
        
        meta_path = self.cache_dir / f"{item_id}.meta.json"
        if meta_path.exists(): return

        p_page = context.new_page()
        try:
            self.logger.info(f"Harvesting item: {url}")
            p_page.goto(url, wait_until="domcontentloaded", timeout=45000)
            try:
                p_page.wait_for_selector(".product__item__info", timeout=10000)
            except: pass
            p_page.evaluate("window.stop()")
            self.human_delay(2000, 4000)
            
            html_content = p_page.content()
            self.cache_html(item_id, html_content, url=url)
            
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title="Cached Item",
                listing_url=url,
                condition="New/Uzbekistan Retail"
            )
            self.save_item(item)
        finally:
            p_page.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = AsaxiySpider(limit_pages=args.limit)
    spider.run()
