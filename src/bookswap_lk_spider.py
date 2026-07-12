import argparse
import random
import re
import time
import httpx
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BookSwapLkSpider(BaseSpider):
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None, query: str | None = None):
        super().__init__(platform_name="BookSwap.lk", territory="Sri Lanka")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.query = query

    def _get_robust_response(self, url: str, max_retries: int = 3):
        client = httpx.Client(timeout=30.0, follow_redirects=True)
        try:
            for attempt in range(max_retries):
                try:
                    headers = {
                        "User-Agent": random.choice([
                            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15",
                        ])
                    }
                    resp = client.get(url, headers=headers)
                    if resp.status_code in [403, 429, 500, 502, 503, 504]:
                        time.sleep(2 ** attempt)
                        continue
                    return resp
                except Exception:
                    time.sleep(2 ** attempt)
            return None
        finally:
            client.close()

    def run(self):
        self.logger.info("Starting BookSwap.lk Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                target_url = f"https://bookswap.lk/books?query={self.query}" if self.query else "https://bookswap.lk/books"
                page.goto(target_url, timeout=60000, wait_until="networkidle")
                page.wait_for_timeout(3000)
                
                for current_page in range(1, self.limit_pages + 1):
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    self.logger.info(f"Scraping page {current_page}...")
                    
                    cards = page.locator("div.card").all()
                    self.logger.info(f"Found {len(cards)} book cards on page.")
                    
                    for card in cards:
                        if self.limit_items is not None and self.items_scraped >= self.limit_items:
                            break
                        try:
                            text = card.inner_text()
                            lines = [l.strip() for l in text.split("\n") if l.strip()]
                            
                            title = lines[0] if lines else "Unknown"
                            category = lines[1] if len(lines) > 1 else None
                            
                            price_val = None
                            price_curr = None
                            for l in lines:
                                if "RS" in l.upper() or "LKR" in l.upper():
                                    m = re.search(r"([\d.,]+)", l)
                                    if m:
                                        num = m.group(1).replace(",", "")
                                        try:
                                            price_val = f"{float(num):.2f}"
                                            price_curr = "LKR"
                                            break
                                        except ValueError:
                                            pass
                                            
                            link_elem = card.locator("a").first
                            listing_url = link_elem.get_attribute("href")
                            if listing_url and listing_url.startswith("/"):
                                listing_url = "https://bookswap.lk" + listing_url

                            listing = BookListing(
                                territory=self.territory,
                                platform=self.platform_name,
                                title=title,
                                category=category,
                                price=price_val,
                                price_currency=price_curr,
                                listing_url=listing_url,
                                condition="Used"
                            )
                            self.save_item(listing)
                        except Exception as e:
                            self.logger.error(f"Error parsing card: {e}")

                    next_btn = page.locator("a[aria-label='Next »']")
                    if next_btn.count() > 0 and next_btn.is_visible():
                        next_btn.click()
                        page.wait_for_timeout(3000)
                    else:
                        self.logger.info("No next page button found.")
                        break
                        
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    parser.add_argument("--limit-pages", type=int, default=None)
    parser.add_argument("--limit-items", type=int, default=None)
    parser.add_argument("--query", type=str, default=None)
    args, _ = parser.parse_known_args()
    BookSwapLkSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
        query=args.query,
    ).run()
