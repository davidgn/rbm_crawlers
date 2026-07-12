import argparse
import re
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider
from isbn_utils import normalize_isbn

class BooksMandalaSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="BooksMandala", territory="Nepal")
        self.limit_pages = limit_pages

    def _get_robust_response(self, url, params=None, max_retries=3):
        import httpx
        client = httpx.Client(timeout=30.0, follow_redirects=True)
        try:
            for attempt in range(max_retries):
                try:
                    resp = client.get(url, params=params)
                    if resp.status_code in [403, 429, 500, 502, 503, 504]:
                        self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                        time.sleep(2 ** attempt)
                        continue
                    return resp
                except Exception as e:
                    self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
            return None
        finally:
            client.close()

    def run(self):
        self.logger.info("Starting Books Mandala Used Books Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                page.goto("https://booksmandala.com/used-books", timeout=60000, wait_until="networkidle")
                page.wait_for_timeout(3000)
                
                # Scrolling for lazy load
                for i in range(self.limit_pages):
                    self.logger.info(f"Scrolling page {i+1}...")
                    page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
                    page.wait_for_timeout(2000)
                    
                    # If no new items appear or reached bottom
                    # (Simple heuristic: check number of cards)

                # Extract items
                # Based on inspection, cards are usually in a specific div
                # Finding all book cards
                cards = page.locator("div.grid > div").all()
                self.logger.info(f"Found {len(cards)} potential book cards.")
                
                for card in cards:
                    try:
                        title_elem = card.locator("h3")
                        if title_elem.count() == 0: continue
                        title = title_elem.inner_text().strip()
                        
                        author_elem = card.locator("p.text-sm.text-gray-500")
                        author = author_elem.inner_text().replace("by ", "").strip() if author_elem.count() > 0 else None
                        
                        price_elem = card.locator("span.font-bold")
                        raw_price = price_elem.inner_text().strip() if price_elem.count() > 0 else None
                        price = None
                        price_currency = None
                        if raw_price:
                            clean_p = re.sub(r"[^\d.,]", "", raw_price).strip()
                            if clean_p:
                                price = clean_p
                                price_currency = "NPR"
                        
                        # Link
                        link_elem = card.locator("a").first
                        listing_url = link_elem.get_attribute("href")
                        if listing_url and listing_url.startswith("/"):
                            listing_url = "https://booksmandala.com" + listing_url

                        listing = BookListing(
                            territory=self.territory,
                            platform=self.platform_name,
                            title=title,
                            author=author,
                            isbn=normalize_isbn(title),
                            price=price,
                            price_currency=price_currency,
                            listing_url=listing_url,
                            condition="Used"
                        )
                        self.save_item(listing)
                    except Exception as e:
                        self.logger.error(f"Error parsing card: {e}")
                        
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    BooksMandalaSpider(limit_pages=args.limit).run()
