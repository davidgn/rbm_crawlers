import time
import re
from urllib.parse import urljoin
from bs4 import BeautifulSoup
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class PlaywrightSearchSpider(BaseSpider):
    """
    A generic spider for Indian bookstores that uses Playwright to bypass Cloudflare
    and scrape HTML search result pages.
    """
    def __init__(self, platform_name: str, base_url: str, search_path: str, selectors: dict, limit_pages: int = 10):
        super().__init__(platform_name=platform_name, territory="India")
        self.base_url = base_url.rstrip("/")
        self.search_path = search_path
        self.selectors = selectors
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting Playwright Search crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        search_term = "Harry Potter" 
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page_ctx = context.new_page()
            Stealth().apply_stealth_sync(page_ctx)
            
            for page_num in range(1, self.limit_pages + 1):
                url = f"{self.base_url}/{self.search_path}".format(query=search_term.replace(' ', '+'), page=page_num)
                self.logger.info(f"Navigating to {url}")
                
                try:
                    response = page_ctx.goto(url, wait_until="domcontentloaded", timeout=30000)
                    if response and response.status in [404, 400]:
                        self.logger.info("Reached end of pagination (404/400).")
                        break
                        
                    # Wait for items to load
                    page_ctx.wait_for_selector(self.selectors['container'], timeout=10000)
                    
                except Exception as e:
                    self.logger.warning(f"Could not load or find container on {url}: {e}")
                    # If it's a timeout waiting for the selector, we might have hit the end of the results or CF
                    if "Timeout" in str(e):
                        if "cloudflare" in page_ctx.content().lower():
                            self.logger.error("Blocked by advanced Cloudflare challenge.")
                        break
                    continue
                
                # Scroll down to trigger lazy loading if necessary
                page_ctx.evaluate("window.scrollTo(0, document.body.scrollHeight)")
                time.sleep(2)
                
                html = page_ctx.content()
                soup = BeautifulSoup(html, "html.parser")
                
                items = soup.select(self.selectors['container'])
                if not items:
                    self.logger.info(f"No items found matching container '{self.selectors['container']}' on page {page_num}. Stopping.")
                    break

                for item in items:
                    try:
                        self._parse_item(item)
                    except Exception as e:
                        self.logger.error(f"Error parsing item: {e}")

                time.sleep(1) # Polite delay
                
            browser.close()
            
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_item(self, item_soup):
        # Title
        title_el = item_soup.select_one(self.selectors['title'])
        if not title_el: return
        title = title_el.text.strip()
        
        # URL
        link_el = item_soup.select_one(self.selectors.get('link', 'a'))
        listing_url = None
        if link_el and link_el.has_attr('href'):
            listing_url = urljoin(self.base_url, link_el['href'])

        # Price
        price_val = None
        if 'price' in self.selectors:
            price_el = item_soup.select_one(self.selectors['price'])
            if price_el:
                price_text = price_el.text.strip()
                match = re.search(r"[\d,]+(?:\.\d+)?", price_text)
                if match:
                    price_val = "INR " + match.group(0).replace(",", "")

        # Author
        author = None
        if 'author' in self.selectors:
            author_el = item_soup.select_one(self.selectors['author'])
            if author_el:
                author = author_el.text.strip().replace("By ", "").strip()

        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(book)
