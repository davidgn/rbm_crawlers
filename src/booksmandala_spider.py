import argparse
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BooksMandalaSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="BooksMandala", territory="Nepal")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting Books Mandala Used Books Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                page.goto("https://booksmandala.com/used-books", timeout=60000, wait_until="networkidle")
                page.wait_for_timeout(3000)
                
                # Scrolling for lazy load
                for i in range(self.limit_pages):
                    self.logger.info(f"Scrolling page {i+1}...")
                    page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
                    page.wait_for_timeout(2000)
                    
                    # If no new items appear or reached bottom
                    # (Simple heuristic: check number of cards)

                # Extract items
                # Based on inspection, cards are usually in a specific div
                # Finding all book cards
                cards = page.locator("div.grid > div").all()
                self.logger.info(f"Found {len(cards)} potential book cards.")
                
                for card in cards:
                    try:
                        title_elem = card.locator("h3")
                        if title_elem.count() == 0: continue
                        title = title_elem.inner_text().strip()
                        
                        author_elem = card.locator("p.text-sm.text-gray-500")
                        author = author_elem.inner_text().replace("by ", "").strip() if author_elem.count() > 0 else None
                        
                        price_elem = card.locator("span.font-bold")
                        price = price_elem.inner_text().strip() if price_elem.count() > 0 else None
                        
                        # Link
                        link_elem = card.locator("a").first
                        listing_url = link_elem.get_attribute("href")
                        if listing_url and listing_url.startswith("/"):
                            listing_url = "https://booksmandala.com" + listing_url

                        listing = BookListing(
                            territory=self.territory,
                            platform=self.platform_name,
                            title=title,
                            author=author,
                            price=price,
                            listing_url=listing_url,
                            condition="Used"
                        )
                        self.save_item(listing)
                    except Exception as e:
                        self.logger.error(f"Error parsing card: {e}")
                        
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    BooksMandalaSpider(limit_pages=args.limit).run()
