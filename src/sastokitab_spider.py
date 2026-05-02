import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class SastoKitabSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Sasto Kitab", territory="Nepal")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting Sasto Kitab crawler.")
        
        with sync_playwright() as p:
            browser = p.chromium.launch(headless=True, args=['--disable-blink-features=AutomationControlled'])
            context = browser.new_context(
                user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            )
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            self.logger.info("Loading Sasto Kitab homepage...")
            try:
                page.goto("https://www.sastokitab.com/", timeout=30000)
                page.wait_for_timeout(3000)
                # Click Load More if it exists
                for _ in range(self.limit_pages):
                    load_more = page.query_selector("button:has-text(\"Load More\")")
                    if load_more and load_more.is_visible():
                        self.logger.info("Clicking Load More...")
                        load_more.click()
                        page.wait_for_timeout(2000)
                    else:
                        break

                cards = page.query_selector_all("a.book-card")
                if not cards:
                    self.logger.info("No cards found on page. Stopping.")
                else:
                    for card in cards:
                        try:
                            self._parse_card(card)
                        except Exception as e:
                            self.logger.error(f"Error parsing card: {e}")
            except Exception as e:
                self.logger.error(f"Error loading page: {e}")

            browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _parse_card(self, card):
        # Extract URL
        listing_url = card.get_attribute("href")
        
        # Extract Title
        title_elem = card.query_selector("h4")
        if not title_elem:
            return
        title = title_elem.inner_text().strip()
        
        # Extract Price
        price = None
        price_elem = card.query_selector(".font-bold.text-gray-900")
        if price_elem:
            price_text = price_elem.inner_text().strip()
            if price_text.startswith("$") or price_text.startswith("Rs"):
                price = price_text # Kept as is or normalized

        # Extract Condition
        condition = None
        cond_elems = card.query_selector_all(".flex.items-center span")
        for cond_elem in cond_elems:
            text = cond_elem.inner_text().strip()
            if text in ["Good", "Like New", "Acceptable", "New", "Fair"]:
                condition = text

        # Extract Seller
        seller = None
        seller_elem = card.query_selector(".fas.fa-user")
        if seller_elem:
            try:
                seller = seller_elem.evaluate("el => el.closest('.flex').querySelector('span').innerText").strip()
            except Exception:
                pass

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=price,
            condition=condition,
            seller_id=seller,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = SastoKitabSpider(limit_pages=3)
    spider.run()
