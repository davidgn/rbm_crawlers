import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BookStandSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="BookStand", territory="India")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting BookStand crawler. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser = p.chromium.launch(headless=True, args=['--disable-blink-features=AutomationControlled'])
            context = browser.new_context(
                user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            )
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                self.logger.info("Loading BookStand pre-owned page...")
                page.goto("https://www.bookstand.app/bookstand/pre-owned", timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(5000)
                
                for current_page in range(1, self.limit_pages + 1):
                    self.logger.info(f"Scraping page {current_page}...")
                    page.wait_for_timeout(2000)
                    
                    # Bookstand uses specific React/Next.js div structures, often links to `/bookstand/item/` or `/b/`
                    cards = page.query_selector_all("a[href*='/bookstand/item/'], a[href*='/b/'], a.bg-card")
                    
                    # fallback if a generic structure is used
                    if not cards:
                        cards = page.query_selector_all("a.rounded-xl.border.bg-card")
                        
                    if not cards:
                        self.logger.warning("No book cards found on page. Stopping.")
                        break
                        
                    for card in cards:
                        try:
                            self._parse_card(card)
                        except Exception as e:
                            self.logger.error(f"Error parsing card: {e}")

                    # Scroll to trigger lazy loading if applicable, or look for Next button
                    page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
                    page.wait_for_timeout(2000)
                    
                    next_btn = page.query_selector("button:has-text('Load More'), a:has-text('Next')")
                    if next_btn and next_btn.is_visible():
                        self.logger.info("Clicking next page...")
                        next_btn.click()
                        page.wait_for_timeout(3000)
                    else:
                        break
                        
            except Exception as e:
                self.logger.error(f"Error loading or scraping page: {e}")
            finally:
                browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _parse_card(self, card):
        listing_url = card.get_attribute("href")
        if not listing_url:
            # Maybe the card is a wrapper, find the link inside
            a_tag = card.query_selector("a")
            if a_tag:
                listing_url = a_tag.get_attribute("href")
            else:
                return

        if listing_url and listing_url.startswith("/"):
            listing_url = "https://www.bookstand.app" + listing_url
            
        try:
            # The title is usually an h2/h3 or a specific p class
            title = card.evaluate("el => { let h = el.querySelector('h2, h3, h4'); return h ? h.innerText : el.innerText.split('\\n')[0]; }").strip()
            if not title:
                return
        except:
            return

        price = None
        try:
            # Look for rupee symbol ₹
            text = card.evaluate("el => el.innerText")
            for line in text.split('\\n'):
                if '₹' in line or 'INR' in line or 'Rs' in line:
                    price = line.strip()
                    break
        except:
            pass

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=price,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = BookStandSpider(limit_pages=2)
    spider.run()
