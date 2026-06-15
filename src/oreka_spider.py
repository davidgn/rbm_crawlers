import argparse
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class OrekaSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Oreka.vn", territory="Vietnam")
        self.limit_pages = limit_pages
        self.base_url = "https://www.oreka.vn/mua-ban-sach"
        self.isbn_pattern = re.compile(r'\b(97[89][0-9]{10})\b')

    def scavenge_isbn(self, text):
        if not text: return None
        match = self.isbn_pattern.search(text)
        return match.group(1) if match else None

    def run(self):
        self.logger.info(f"Starting Oreka Book Crawler. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                for current_page in range(1, self.limit_pages + 1):
                    url = f"{self.base_url}?page={current_page}"
                    self.logger.info(f"Fetching page {current_page}: {url}")
                    
                    page.goto(url, timeout=60000, wait_until="domcontentloaded")
                    page.wait_for_timeout(3000)
                    
                    # Get product links
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "-detail/" in l]))
                    
                    if not product_links:
                        self.logger.info("No product links found. Ending.")
                        break
                        
                    self.logger.info(f"Found {len(product_links)} items on page {current_page}.")
                    
                    for plink in product_links:
                        try:
                            # Open in same page or new page? Same page is safer for session
                            page.goto(plink, timeout=30000, wait_until="domcontentloaded")
                            page.wait_for_timeout(2000)
                            
                            body_text = page.inner_text("body")
                            title = page.locator("h1").inner_text() if page.locator("h1").count() > 0 else "Unknown"
                            
                            # Price usually looks like "240.000đ"
                            price_match = re.search(r"([0-9\.]+đ)", body_text)
                            price = price_match.group(1) if price_match else None
                            
                            isbn = self.scavenge_isbn(body_text)
                            
                            condition_match = re.search(r"Tình trạng\n(.+)", body_text)
                            condition = condition_match.group(1) if condition_match else None
                            
                            listing = BookListing(
                                territory="Vietnam",
                                platform="Oreka.vn",
                                title=title,
                                author=None, # Often missing in P2P
                                isbn=isbn,
                                price=price,
                                listing_url=plink,
                                condition=condition,
                                seller_id=None # Can be extracted if needed
                            )
                            self.save_item(listing)
                            
                        except Exception as e:
                            self.logger.error(f"Failed to scrape {plink}: {e}")
                            continue
                            
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=50)
    args = parser.parse_args()
    OrekaSpider(limit_pages=args.limit).run()
