import argparse
from playwright.sync_api import sync_playwright
import time
import re
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class BuyZoxsSpider(BaseSpider):
    """
    Playwright-based crawler for buyZOXS.
    Fully renders JS and bypasses basic bot protections.
    """
    def __init__(self, limit_pages: int = 3, limit_items: int | None = None):
        super().__init__(platform_name="BuyZOXS", territory="DE")
        self.base_url = "https://www.buyzoxs.de"
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        
    def _get_robust_response(self, url: str, max_retries: int = 3):
        import httpx
        headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"}
        with httpx.Client(timeout=30.0, follow_redirects=True, headers=headers) as client:
            for attempt in range(max_retries):
                try:
                    resp = client.get(url)
                    if resp.status_code in (403, 429, 500, 502, 503, 504):
                        self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                        time.sleep(2 ** attempt)
                        continue
                    return resp
                except Exception as e:
                    self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
        return None

    def extract_books(self, page_html: str):
        soup = BeautifulSoup(page_html, "html.parser")
        products = soup.find_all("div", class_=re.compile(r"product.*card|article.*item|product-wrap", re.I))
        
        extracted = 0
        for p in products:
            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                break
            title_el = p.find("a", class_=re.compile(r"title|name", re.I))
            price_el = p.find("span", class_=re.compile(r"price", re.I))
            if not title_el or not price_el:
                continue
                
            title = title_el.text.strip()
            href = title_el.get("href", "")
            if not href.startswith("http"):
                href = self.base_url + href
                
            price_raw = price_el.text.strip().replace("€", "").replace(",", ".").strip()
            match = re.search(r"[\d]+(?:\.\d+)?", price_raw)
            price_val = match.group(0) if match else price_raw
            
            listing = BookListing(
                platform=self.platform_name,
                territory=self.territory,
                listing_url=href,
                title=title,
                price=price_val,
                price_currency="EUR",
                condition="good"
            )
            listing = self.scavenge_metadata(page_html, listing)
            
            # This triggers the Redis Firehose!
            self.save_item(listing)
            extracted += 1
            
        self.logger.info(f"Successfully rendered and extracted {extracted} books from page")
        
    def run(self):
        with sync_playwright() as p:
            # Inject our stealth evasion tools
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            
            categories = ["/kaufen/buecher_k173.html", "/kaufen/fachbuecher_k174.html"]
            
            for cat in categories:
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break
                url = f"{self.base_url}{cat}"
                self.logger.info(f"Navigating to {url}")
                try:
                    page.goto(url, wait_until="networkidle", timeout=60000)
                    self.human_delay(2000, 4000)
                    self.extract_books(page.content())
                    
                    # Crawl depth using human-like interaction
                    for _ in range(self.limit_pages - 1):
                        if self.limit_items is not None and self.items_scraped >= self.limit_items:
                            break
                        next_btn = page.query_selector("a.next, .pagination-next a, .pagination li:last-child a")
                        if next_btn:
                            self.human_jitter(page)
                            next_btn.click()
                            page.wait_for_load_state("networkidle")
                            self.human_delay(3000, 5000)
                            self.extract_books(page.content())
                        else:
                            break
                            
                except Exception as e:
                    self.logger.error(f"Failed to crawl {url}: {e}")
                    
            browser.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="BuyZOXS Playwright Spider")
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=3)
    parser.add_argument("--limit-items", type=int, default=None)
    args, _ = parser.parse_known_args()
    spider = BuyZoxsSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
