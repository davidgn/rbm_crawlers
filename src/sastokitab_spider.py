import argparse
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class SastoKitabSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Sasto Kitab", territory="Nepal")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting Sasto Kitab Enhanced Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                self.logger.info("Loading Sasto Kitab homepage...")
                page.goto("https://www.sastokitab.com/", timeout=30000)
                page.wait_for_timeout(3000)
                
                # Click Load More
                for _ in range(self.limit_pages):
                    load_more = page.query_selector("button:has-text(\"Load More\")")
                    if load_more and load_more.is_visible():
                        self.logger.info("Clicking Load More...")
                        load_more.click()
                        page.wait_for_timeout(2000)
                    else:
                        break

                cards = page.query_selector_all("a.book-card")
                for card in cards:
                    try:
                        self._parse_card(card)
                    except Exception as e:
                        self.logger.error(f"Error parsing card: {e}")
            except Exception as e:
                self.logger.error(f"Error loading page: {e}")
            finally:
                browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _parse_card(self, card):
        listing_url = card.get_attribute("href")
        
        title_elem = card.query_selector("h4")
        if not title_elem: return
        title = title_elem.inner_text().strip()
        
        price = None
        price_elem = card.query_selector(".font-bold.text-gray-900")
        if price_elem:
            price = price_elem.inner_text().strip()

        condition = None
        category = None
        # The category is in a span badge at the top
        cat_elem = card.query_selector("span[class*='bg-blue-100']")
        if cat_elem:
            category = cat_elem.inner_text().strip()

        # Search for condition in other spans
        spans = card.query_selector_all("span")
        for s in spans:
            text = s.inner_text().strip()
            if text in ["Good", "Like New", "Acceptable", "New", "Fair"]:
                condition = text

        # Seller name
        seller = None
        try:
            seller = card.evaluate("el => el.querySelector('.fas.fa-user')?.closest('.flex')?.querySelector('span')?.innerText")
        except:
            pass

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=price,
            condition=condition,
            category=category,
            seller_id=seller,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = SastoKitabSpider(limit_pages=args.limit)
    spider.run()
