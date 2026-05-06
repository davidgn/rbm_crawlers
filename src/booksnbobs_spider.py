import time
import argparse
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BooksNBobsSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Books n Bobs", territory="Malaysia")
        self.limit_pages = limit_pages
        self.base_url = "https://booksnbobs.com/preloved-books"

    def run(self):
        self.logger.info(f"Starting Books n Bobs spider. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                for current_page in range(1, self.limit_pages + 1):
                    url = f"{self.base_url}/page/{current_page}/"
                    self.logger.info(f"Scraping page {current_page}: {url}")
                    
                    page.goto(url, wait_until="domcontentloaded", timeout=60000)
                    page.wait_for_timeout(2000)
                    
                    # Books n Bobs uses wc-block-grid__product for category grid
                    cards = page.query_selector_all(".wc-block-grid__product, .product")
                    
                    if not cards:
                        self.logger.warning(f"No products found on page {current_page}. Stopping.")
                        break
                        
                    for card in cards:
                        try:
                            title_elem = card.query_selector(".wc-block-grid__product-title, .woocommerce-loop-product__title")
                            title = title_elem.inner_text().strip() if title_elem else "Unknown"
                            
                            price_elem = card.query_selector(".wc-block-grid__product-price, .price")
                            price = price_elem.inner_text().strip() if price_elem else None
                            
                            link_elem = card.query_selector("a")
                            link = link_elem.get_attribute("href") if link_elem else ""
                            
                            item = BookListing(
                                territory=self.territory,
                                platform=self.platform_name,
                                title=title,
                                price=f"MYR {price}" if price else None,
                                listing_url=link
                            )
                            self.save_item(item)
                        except Exception as e:
                            self.logger.error(f"Error parsing card: {e}")
                            
                    page.wait_for_timeout(1000)
                    
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()
                
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=100)
    args = parser.parse_args()
    spider = BooksNBobsSpider(limit_pages=args.limit)
    spider.run()
