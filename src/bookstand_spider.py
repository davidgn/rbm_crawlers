import argparse
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
        self.logger.info(f"Starting BookStand Enhanced Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                self.logger.info("Loading BookStand pre-owned page...")
                page.goto("https://www.bookstand.app/bookstand/pre-owned", timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(5000)
                
                for current_page in range(1, self.limit_pages + 1):
                    self.logger.info(f"Scraping page {current_page}...")
                    page.wait_for_timeout(2000)
                    
                    cards = page.query_selector_all("a.bg-card")
                    if not cards:
                        cards = page.query_selector_all("a.rounded-xl.border.bg-card")
                        
                    if not cards:
                        self.logger.warning("No book cards found. Stopping.")
                        break
                        
                    links = [c.get_attribute("href") for c in cards]
                    
                    for link in links:
                        if not link: continue
                        abs_url = "https://www.bookstand.app" + link if link.startswith("/") else link
                        try:
                            self._scrape_detail(page, abs_url)
                        except Exception as e:
                            self.logger.error(f"Error scraping detail {abs_url}: {e}")

                    # Scroll for lazy load
                    page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
                    page.wait_for_timeout(2000)
                    
                    next_btn = page.query_selector("button:has-text('Load More')")
                    if next_btn and next_btn.is_visible():
                        next_btn.click()
                    else:
                        break
                        
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _scrape_detail(self, page, url):
        page.goto(url, timeout=30000, wait_until="domcontentloaded")
        page.wait_for_timeout(2000)
        
        body = page.locator("body")
        text = body.inner_text()
        
        title = page.locator("h1").inner_text() if page.locator("h1").count() > 0 else "Unknown"
        
        # Details section
        details = {}
        # Simple text extraction for details block
        try:
            # Look for lines after "DETAILS"
            lines = text.split("\n")
            if "DETAILS" in lines:
                idx = lines.index("DETAILS")
                for i in range(idx+1, len(lines), 2):
                    if i+1 < len(lines):
                        details[lines[i].strip().lower()] = lines[i+1].strip()
                    if i > idx + 15: break # sanity
        except:
            pass

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=details.get("by"), # some detail pages have 'by' line
            isbn=details.get("isbn"),
            publisher=details.get("publisher"),
            pages=details.get("pages"),
            category=details.get("genre"),
            binding=details.get("format"),
            condition=details.get("condition"),
            price=None, # will capture if visible
            listing_url=url,
        )
        
        # Price fallback
        if "đ" in text or "$" in text or "₹" in text:
            # find first price-like string
            import re
            m = re.search(r"([\$₹đ][0-9\.]+)", text)
            if m: item.price = m.group(1)

        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = BookStandSpider(limit_pages=args.limit)
    spider.run()
