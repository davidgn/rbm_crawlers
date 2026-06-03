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
                self.logger.info(f"Found {len(cards)} cards. Starting deep crawl.")
                
                for card in cards:
                    try:
                        self._harvest_card(card, context)
                    except Exception as e:
                        self.logger.error(f"Error harvesting card: {e}")
            except Exception as e:
                self.logger.error(f"Error loading page: {e}")
            finally:
                browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _harvest_card(self, card, context):
        listing_url = card.get_attribute("href")
        if listing_url and listing_url.startswith("/"):
            listing_url = "https://www.sastokitab.com" + listing_url
        
        title_elem = card.query_selector("h4")
        if not title_elem: return
        title = title_elem.inner_text().strip()
        
        # Open detail page in a new tab for deep extraction
        detail_page = context.new_page()
        try:
            detail_page.goto(listing_url, timeout=30000)
            detail_page.wait_for_timeout(1000)
            html = detail_page.content()
            
            # Basic info from card as fallback
            price = None
            price_elem = card.query_selector(".font-bold.text-gray-900")
            if price_elem:
                price = price_elem.inner_text().strip()

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                listing_url=listing_url,
            )
            
            # MANDATORY: Scavenge metadata from the full detail page
            item = self.scavenge_metadata(html, item)
            
            # Capture seller comments/description
            desc_elem = detail_page.query_selector(".book-description, .mt-6.text-gray-700")
            if desc_elem:
                item.seller_comments = desc_elem.inner_text().strip()
                # Scavenge again from description if needed
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
    spider = SastoKitabSpider(limit_pages=args.limit)
    spider.run()
