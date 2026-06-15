import argparse
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BookExchangeSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="BookExchange.lk", territory="Sri Lanka")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting BookExchange Enhanced Crawler. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            # Use search parameters to ensure books are shown
            self.logger.info("Loading ExploreData.html with adType=sell...")
            try:
                page.goto("https://bookexchange.lk/ExploreData.html?adType=sell", wait_until="networkidle", timeout=60000)
                # Wait for either cards or empty state
                page.wait_for_selector(".book-card, .empty-state", timeout=30000)
            except Exception as e:
                self.logger.error(f"Error loading page: {e}")
                browser.close()
                return

            for current_page in range(1, self.limit_pages + 1):
                self.logger.info(f"Scraping page {current_page}...")
                page.wait_for_timeout(3000)
                
                cards = page.query_selector_all(".book-card")
                if not cards:
                    # Try to clear filters if no books found
                    clear_btn = page.query_selector("button:has-text(\"Clear Filters\")")
                    if clear_btn and current_page == 1:
                        self.logger.info("Clicking Clear Filters...")
                        clear_btn.click()
                        page.wait_for_timeout(3000)
                        cards = page.query_selector_all(".book-card")
                    
                if not cards:
                    self.logger.info("No more cards found.")
                    break
                    
                for card in cards:
                    try:
                        self._harvest_card(card, context)
                    except Exception as e:
                        self.logger.error(f"Error harvesting card: {e}")
                
                next_btn = page.query_selector(".pagination .page-item:last-child:not(.disabled) .page-link")
                if next_btn and ("Next" in next_btn.inner_text() or "»" in next_btn.inner_text()):
                    self.logger.info("Clicking next page...")
                    next_btn.click()
                    page.wait_for_timeout(2000)
                else:
                    break
                    
            browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _harvest_card(self, card, context):
        title_elem = card.query_selector(".card-title")
        if not title_elem: return
        title = title_elem.inner_text().strip()
        
        link_elem = card.query_selector("a.btn-outline-primary")
        listing_url = link_elem.get_attribute("href") if link_elem else None
        if not listing_url: return
        
        if listing_url.startswith("./"):
            listing_url = "https://bookexchange.lk/" + listing_url[2:]
        elif listing_url.startswith("/"):
            listing_url = "https://bookexchange.lk" + listing_url
        
        if listing_url in self._seen_urls: return

        detail_page = context.new_page()
        try:
            detail_page.goto(listing_url, timeout=30000)
            detail_page.wait_for_timeout(1000)
            html = detail_page.content()
            
            price = None
            condition = None
            badges = card.query_selector_all(".badge")
            for badge in badges:
                text = badge.inner_text().strip()
                if "Rs." in text:
                    price = text
                elif text in ["Like New", "Good", "Acceptable", "Fair"]:
                    condition = text

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                condition=condition,
                listing_url=listing_url,
            )
            
            item = self.scavenge_metadata(html, item)
            
            desc_elem = detail_page.query_selector(".card-text")
            if desc_elem:
                item.seller_comments = desc_elem.inner_text().strip()
                item = self.scavenge_metadata(item.seller_comments, item)

            self.save_item(item)
            self.cache_html(listing_url.split("=")[-1], html, url=listing_url)
            
        except Exception as e:
            self.logger.error(f"Error crawling detail page {listing_url}: {e}")
        finally:
            detail_page.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=5)
    args = parser.parse_args()
    spider = BookExchangeSpider(limit_pages=args.limit)
    spider.run()
