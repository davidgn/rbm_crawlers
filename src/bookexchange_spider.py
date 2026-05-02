import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BookExchangeSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="BookExchange.lk", territory="Sri Lanka")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting BookExchange crawler. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser = p.chromium.launch(headless=True, args=['--disable-blink-features=AutomationControlled'])
            context = browser.new_context(
                user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            )
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            # The site loads data via API on ExploreData.html
            self.logger.info("Loading ExploreData.html...")
            try:
                page.goto("https://bookexchange.lk/ExploreData.html", wait_until="domcontentloaded", timeout=60000)
                # Wait for at least one book card to appear or a message saying no ads
                page.wait_for_selector(".book-card, .info-card", timeout=30000)
            except Exception as e:
                self.logger.error(f"Error loading page: {e}")
                browser.close()
                return

            for current_page in range(1, self.limit_pages + 1):
                self.logger.info(f"Scraping page {current_page}...")
                
                # Wait a bit for JS to populate the cards
                page.wait_for_timeout(5000)
                
                cards = page.query_selector_all(".book-card")
                if not cards:
                    self.logger.info("No cards found on page. Saving HTML for debugging...")
                    with open("/home/davidgn/.gemini/tmp/davidgn/bookexchange_debug.html", "w") as dbg:
                        dbg.write(page.content())
                    break
                    
                for card in cards:
                    try:
                        self._parse_card(card)
                    except Exception as e:
                        self.logger.error(f"Error parsing card: {e}")
                
                # Check for next page button
                next_btn = page.query_selector(".pagination .page-item:last-child:not(.disabled) .page-link")
                if next_btn and ("Next" in next_btn.inner_text() or "»" in next_btn.inner_text()):
                    self.logger.info("Clicking next page...")
                    next_btn.click()
                    page.wait_for_timeout(2000) # Give time for network
                else:
                    self.logger.info("No next page button. Reached end.")
                    break
                    
            browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _parse_card(self, card):
        title_elem = card.query_selector(".card-title")
        if not title_elem:
            return
            
        title = title_elem.inner_text().strip()
        
        # Link usually on the image or title or view details
        link_elem = card.query_selector("a.btn-outline-primary")
        listing_url = link_elem.get_attribute("href") if link_elem else "https://bookexchange.lk/ExploreData.html"
        if listing_url and listing_url.startswith("./"):
            listing_url = "https://bookexchange.lk/" + listing_url[2:]
        elif listing_url and listing_url.startswith("/"):
            listing_url = "https://bookexchange.lk" + listing_url
            
        # condition and price
        price = None
        condition = None
        badges = card.query_selector_all(".badge")
        for badge in badges:
            text = badge.inner_text().strip()
            if "Rs." in text or "LKR" in text:
                price = "LKR " + text.replace("Rs.", "").replace(",", "").strip()
            elif text in ["Like New", "Good", "Acceptable", "New"]:
                condition = text

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=price,
            condition=condition,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = BookExchangeSpider(limit_pages=2)
    spider.run()
