import argparse
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BookSwapLkSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="BookSwap.lk", territory="Sri Lanka")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting BookSwap.lk Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target 'View All Books' or latest listings
                page.goto("https://bookswap.lk/books", timeout=60000, wait_until="networkidle")
                page.wait_for_timeout(3000)
                
                for current_page in range(1, self.limit_pages + 1):
                    self.logger.info(f"Scraping page {current_page}...")
                    
                    # Intercept cards
                    # They seem to be in a list
                    cards = page.locator("div.card").all()
                    self.logger.info(f"Found {len(cards)} book cards on page.")
                    
                    for card in cards:
                        try:
                            # Details are in the card body
                            text = card.inner_text()
                            lines = [l.strip() for l in text.split("\n") if l.strip()]
                            
                            # Usually: Title, Category, Author, Price
                            title = lines[0] if lines else "Unknown"
                            category = lines[1] if len(lines) > 1 else None
                            
                            price = None
                            for l in lines:
                                if "RS." in l:
                                    price = l
                                    break
                                    
                            link_elem = card.locator("a").first
                            listing_url = link_elem.get_attribute("href")
                            if listing_url and listing_url.startswith("/"):
                                listing_url = "https://bookswap.lk" + listing_url

                            listing = BookListing(
                                territory=self.territory,
                                platform=self.platform_name,
                                title=title,
                                category=category,
                                price=price,
                                listing_url=listing_url,
                                condition="Used"
                            )
                            self.save_item(listing)
                        except Exception as e:
                            self.logger.error(f"Error parsing card: {e}")

                    # Check for next page
                    next_btn = page.locator("a[aria-label='Next »']")
                    if next_btn.count() > 0 and next_btn.is_visible():
                        next_btn.click()
                        page.wait_for_timeout(3000)
                    else:
                        self.logger.info("No next page button found.")
                        break
                        
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    BookSwapLkSpider(limit_pages=args.limit).run()
