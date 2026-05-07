import time
import argparse
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider
import re

class BooksNBobsSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Books n Bobs", territory="Malaysia")
        self.limit_pages = limit_pages
        self.base_url = "https://booksnbobs.com/preloved-books"

    def run(self):
        self.logger.info(f"Starting Books n Bobs Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                for current_page in range(1, self.limit_pages + 1):
                    url = f"{self.base_url}/page/{current_page}/"
                    self.logger.info(f"Scraping index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        page.wait_for_timeout(2000)
                    except Exception as e:
                        self.logger.error(f"Failed to load index page {current_page}: {e}")
                        break
                    
                    # Books n Bobs uses wc-block-grid__product for category grid or standard .product
                    links = page.query_selector_all(".wc-block-grid__product a, .product a")
                    
                    product_urls = []
                    for link in links:
                        href = link.get_attribute("href")
                        if href and "/product/" in href:
                            product_urls.append(href)
                    
                    product_urls = list(set(product_urls))
                    
                    if not product_urls:
                        self.logger.warning(f"No products found on page {current_page}. Stopping.")
                        break
                        
                    for p_url in product_urls:
                        try:
                            self._harvest_item(page, p_url)
                            page.wait_for_timeout(500)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
                    page.wait_for_timeout(1000)
                    
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()
                
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _harvest_item(self, page, url):
        # Extract slug for unique ID
        slug_match = re.search(r"/product/([^/]+)/", url)
        item_id = slug_match.group(1) if slug_match else str(time.time())
        
        self.logger.info(f"Harvesting item: {url}")
        page.goto(url, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(1000)
        
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
    spider = BooksNBobsSpider(limit_pages=args.limit)
    spider.run()
