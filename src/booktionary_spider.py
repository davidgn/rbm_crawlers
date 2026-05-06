import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BooktionarySpider(BaseSpider):
    def __init__(self, limit_pages=200):
        super().__init__(platform_name="Booktionary", territory="Bangladesh")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting Booktionary crawler. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser = p.chromium.launch(headless=True, args=['--disable-blink-features=AutomationControlled'])
            context = browser.new_context(
                user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            )
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                self.logger.info("Loading Booktionary homepage...")
                page.goto("https://booktionary.com.bd/", timeout=120000, wait_until="commit")
                page.wait_for_timeout(5000)
                
                # Check for textbook links or category pages
                # Assuming standard marketplace structure for textbook exchanges
                product_selectors = [".product-item", ".book-item", ".card", ".item"]
                
                for current_page in range(1, self.limit_pages + 1):
                    self.logger.info(f"Scraping page {current_page}...")
                    page.wait_for_timeout(2000)
                    
                    found_cards = False
                    for selector in product_selectors:
                        cards = page.query_selector_all(selector)
                        # Filter to cards that actually have links to books
                        valid_cards = [c for c in cards if c.query_selector("a")]
                        if valid_cards:
                            found_cards = True
                            for card in valid_cards:
                                try:
                                    self._parse_card(card)
                                except Exception as e:
                                    self.logger.error(f"Error parsing card: {e}")
                            break
                            
                    if not found_cards:
                        self.logger.warning("No book cards found on page. Stopping.")
                        break

                    # Attempt pagination
                    next_btn = page.query_selector("a.next, li.next a, .pagination .next, [aria-label='Next']")
                    if next_btn:
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
        # Generic extraction logic for JS rendered textbook exchanges
        title_elem = card.query_selector("h2, h3, h4, .title, .name")
        if not title_elem:
            return
            
        try:
            title = card.evaluate("el => el.querySelector('h2, h3, h4, .title, .name').innerText").strip()
        except:
            return
        
        link_elem = card.query_selector("a")
        listing_url = link_elem.get_attribute("href") if link_elem else "https://booktionary.com.bd/"
        if listing_url and listing_url.startswith("/"):
            listing_url = "https://booktionary.com.bd" + listing_url
            
        price = None
        price_elem = card.query_selector(".price, .amount")
        if price_elem:
            try:
                price_text = card.evaluate("el => el.querySelector('.price, .amount').innerText").strip()
                if "৳" in price_text or "BDT" in price_text or "Tk" in price_text or "1" in price_text:
                    price = price_text
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
    spider = BooktionarySpider(limit_pages=2)
    spider.run()
