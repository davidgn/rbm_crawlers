import argparse
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BooktionarySpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Booktionary", territory="Bangladesh")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting Booktionary Enhanced Crawler. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                self.logger.info("Loading Booktionary old-books page...")
                page.goto("https://booktionary.com.bd/old-books", timeout=60000)
                page.wait_for_timeout(5000)
                
                item_selector = ".product-cart-wrap"
                
                for current_page in range(1, self.limit_pages + 1):
                    self.logger.info(f"Scraping page {current_page}...")
                    page.wait_for_timeout(3000)
                    
                    cards = page.query_selector_all(item_selector)
                    if not cards:
                        self.logger.info("No more cards found.")
                        break
                        
                    for card in cards:
                        try:
                            self._harvest_card(card, context)
                        except Exception as e:
                            self.logger.error(f"Error harvesting card: {e}")
                    
                    # Pagination: scroll to bottom to ensure 'Next' is visible
                    page.evaluate("window.scrollTo(0, document.body.scrollHeight)")
                    page.wait_for_timeout(2000)
                    
                    next_btn = page.query_selector("a.next, li.next a, .pagination .next, [aria-label='Next']")
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

    def _harvest_card(self, card, context):
        title_elem = card.query_selector(".product-content-wrap h2 a, .product__name a")
        if not title_elem: 
            title_elem = card.query_selector("h2, h3, .title")
        if not title_elem: return
        
        title = title_elem.inner_text().strip()
        
        link_elem = card.query_selector("a")
        listing_url = link_elem.get_attribute("href") if link_elem else None
        if not listing_url: return
        
        if listing_url.startswith("/"):
            listing_url = "https://booktionary.com.bd" + listing_url
            
        if listing_url in self._seen_urls: return

        detail_page = context.new_page()
        try:
            detail_page.goto(listing_url, timeout=30000)
            detail_page.wait_for_timeout(1000)
            html = detail_page.content()
            
            price_elem = card.query_selector(".product-price span, .price, .amount")
            price = price_elem.inner_text().strip() if price_elem else None

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                listing_url=listing_url,
            )
            
            item = self.scavenge_metadata(html, item)
            
            desc_elem = detail_page.query_selector(".product-description, #tab-description, .description")
            if desc_elem:
                item.seller_comments = desc_elem.inner_text().strip()
                item = self.scavenge_metadata(item.seller_comments, item)

            self.save_item(item)
            self.cache_html(listing_url.split("/")[-1], html, url=listing_url)
            
        except Exception as e:
            self.logger.error(f"Error crawling detail page {listing_url}: {e}")
        finally:
            detail_page.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=5)
    args = parser.parse_args()
    spider = BooktionarySpider(limit_pages=args.limit)
    spider.run()
