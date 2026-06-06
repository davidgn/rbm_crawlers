import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class FahasaSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Fahasa", territory="Vietnam")
        self.limit_pages = limit_pages
        self.base_url = "https://www.fahasa.com"

    def run(self):
        self.logger.info(f"Starting Fahasa Vietnam Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target 'New Releases' or search
                target_url = "https://www.fahasa.com/sach-trong-nuoc.html"
                
                for current_page in range(1, self.limit_pages + 1):
                    # Fahasa pagination: ?p=N
                    url = f"{target_url}?p={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="networkidle", timeout=60000)
                        self.human_delay(3000, 6000)
                        self.human_jitter(page)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links
                    # Fahasa products are typically inside .product-item and have unique slugs
                    product_links = page.evaluate("""() => {
                        const items = Array.from(document.querySelectorAll('.product-item a, .item a'));
                        return items.map(a => a.href).filter(href => href.includes('.html'));
                    }""")
                    
                    # Refine filter: must NOT be a known category path
                    product_links = list(set([
                        l for l in product_links 
                        if not any(x in l for x in ["/customer/", "/checkout/", "/wishlist/", "sach-trong-nuoc.html", "van-hoc-trong-nuoc"])
                    ]))
                    
                    if not product_links:
                        # Attempt to find by slug length/pattern
                        links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                        product_links = list(set([l for l in links if l.count('/') >= 4 and l.endswith('.html')]))

                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}.")
                        break
                        
                    for p_url in product_links[:10]:
                        try:
                            self._harvest_item(page, p_url)
                            self.human_delay(1500, 3500)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, page, url):
        # Extract ID from slug
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
            condition="New (Fahasa Retail)"
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = FahasaSpider(limit_pages=args.limit)
    spider.run()
