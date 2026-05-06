import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BooksTwSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Books.com.tw", territory="Taiwan")
        self.limit_pages = limit_pages
        self.base_url = "https://www.books.com.tw"

    def run(self):
        self.logger.info(f"Starting Books.com.tw Crawler. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            # Use headful mode conceptually but since we are in CLI, we use standard launch
            # but with slow_mo to appear more human
            browser = p.chromium.launch(headless=True, args=["--disable-blink-features=AutomationControlled"])
            context = browser.new_context(
                user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                viewport={"width": 1920, "height": 1080}
            )
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Start URL for new arrivals
                start_url = "https://www.books.com.tw/web/books_n_newbook_01/?o=1&v=1"
                
                for current_page in range(1, self.limit_pages + 1):
                    url = f"{start_url}&page={current_page}"
                    self.logger.info(f"Fetching page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        page.wait_for_timeout(5000) # Give Cloudflare time to clear
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        continue
                        
                    # Extract product links
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "/products/" in l and "loc=" not in l and "?loc=" not in l]))
                    
                    if not product_links:
                        self.logger.warning("No product links found. Attempting to scroll...")
                        page.evaluate("window.scrollBy(0, 1000)")
                        page.wait_for_timeout(2000)
                        links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                        product_links = list(set([l for l in links if "/products/" in l and "loc=" not in l]))

                    self.logger.info(f"Found {len(product_links)} products.")
                    
                    for plink in product_links:
                        try:
                            self._scrape_detail(page, plink)
                            page.wait_for_timeout(2000) # Politeness
                        except Exception as e:
                            self.logger.error(f"Error scraping {plink}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

    def _scrape_detail(self, page, url):
        page.goto(url, wait_until="domcontentloaded", timeout=30000)
        page.wait_for_timeout(1000)
        
        text = page.inner_text("body")
        title = page.locator("h1").inner_text() if page.locator("h1").count() > 0 else "Unknown"
        
        isbn = None
        isbn_match = re.search(r"ISBN[：:]\s*(\d+)", text)
        if isbn_match: isbn = isbn_match.group(1)
        
        publisher = None
        pub_match = re.search(r"出版社[：:]\s*([^\n|]+)", text)
        if pub_match: publisher = pub_match.group(1).strip()
        
        pub_year = None
        date_match = re.search(r"出版日期[：:]\s*(\d{4})", text)
        if date_match: pub_year = date_match.group(1)
        
        author = None
        author_match = re.search(r"作者[：:]\s*([^\n|]+)", text)
        if author_match: author = author_match.group(1).strip()

        price = None
        price_match = re.search(r"優惠價[：:]\s*(\d+)\s*元", text)
        if price_match: price = "TWD " + price_match.group(1)

        listing = BookListing(
            territory="Taiwan",
            platform="Books.com.tw",
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=pub_year,
            price=price,
            listing_url=url,
            condition="New"
        )
        self.save_item(listing)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=50)
    args = parser.parse_args()
    BooksTwSpider(limit_pages=args.limit).run()
