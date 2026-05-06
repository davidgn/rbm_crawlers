import argparse
import time
import json
import os
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BookLaneSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="BookLane", territory="Regional")
        self.limit_pages = limit_pages
        self.base_url = "https://booklane.netlify.app/books"

    def run(self):
        self.logger.info(f"Starting BookLane Netlify spider. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                self.logger.info(f"Navigating to {self.base_url}")
                page.goto(self.base_url, wait_until="networkidle", timeout=60000)
                
                # Infinite scroll or "Load More" handling
                for i in range(self.limit_pages):
                    self.logger.info(f"Scan pass {i+1}...")
                    
                    # Extract current visible books
                    # Based on Flutter web rendering, we look for text and link patterns
                    cards = page.query_selector_all("div[role='button'], a")
                    for card in cards:
                        try:
                            text = card.inner_text().strip()
                            if not text or len(text) < 10: continue
                            
                            # Heuristic for BookLane cards: Title usually first, Price starts with symbol
                            lines = text.split('\n')
                            if len(lines) >= 2:
                                title = lines[0]
                                price = None
                                for line in lines:
                                    if '₹' in line or 'R$' in line or 'LKR' in line:
                                        price = line
                                        break
                                
                                if price:
                                    item = BookListing(
                                        territory=self.territory,
                                        platform=self.platform_name,
                                        title=title,
                                        price=price,
                                        listing_url=page.url
                                    )
                                    self.save_item(item)
                        except:
                            continue
                            
                    # Scroll down
                    page.evaluate("window.scrollBy(0, 1000)")
                    page.wait_for_timeout(2000)
                    
                    if i % 10 == 0:
                        self.logger.info(f"Total so far: {self.items_scraped}")

            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()
                
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    spider = BookLaneSpider(limit_pages=100)
    spider.run()
