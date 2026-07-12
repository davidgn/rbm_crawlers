import argparse
import time
import re
from urllib.parse import urljoin, urlparse

from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider
from isbn_utils import extract_isbn


class TikiSpider(BaseSpider):
    def __init__(self, limit_pages=50, limit_items=50):
        super().__init__(platform_name="Tiki.vn", territory="Vietnam")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.items_attempted = 0
        # Tiki Books Category
        self.site_origin = "https://tiki.vn"
        self.base_url = "https://tiki.vn/nha-sach-tiki/c8322"

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
        self.logger.info(f"Starting Tiki.vn Vietnam Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                for current_page in range(1, self.limit_pages + 1):
                    if self.items_attempted >= self.limit_items:
                        break

                    # Tiki pagination: ?page=N
                    url = f"{self.base_url}?page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        # Use networkidle for Tiki as it has many dynamic components
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        self.human_delay(3000, 7000)
                        self.human_jitter(page)
                        
                        # Scroll to trigger lazy loading of product items
                        page.evaluate("window.scrollBy(0, 2000)")
                        self.human_delay(2000, 4000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links: -p[id].html
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list({
                        product_url
                        for link in links
                        if (product_url := self._product_url(link))
                    })
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}.")
                        # Try one more scroll
                        page.evaluate("window.scrollTo(0, document.body.scrollHeight)")
                        self.human_delay(3000, 5000)
                        links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                        product_links = list({
                            product_url
                            for link in links
                            if (product_url := self._product_url(link))
                        })

                    if not product_links:
                        break
                        
                    for p_url in product_links:
                        if self.items_attempted >= self.limit_items:
                            break
                        self.items_attempted += 1
                        try:
                            self._harvest_item(context, p_url)
                            self.human_delay(1500, 3000)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _product_url(self, href):
        if not href:
            return None
        url = urljoin(f"{self.site_origin}/", href)
        parsed = urlparse(url)
        if parsed.netloc not in {"tiki.vn", "www.tiki.vn"}:
            return None
        if not re.search(r"-p\d+\.html$", parsed.path):
            return None
        return url

    def _harvest_item(self, context, url):
        # Extract ID from slug-p12345.html
        item_id_match = re.search(r"-p(\d+)\.html", url)
        item_id = item_id_match.group(1) if item_id_match else str(time.time())
        
        # Check if already cached (meta check is faster than stat)
        meta_path = self.cache_dir / f"{item_id}.meta.json"
        if meta_path.exists():
            return

        p_page = context.new_page()
        Stealth().apply_stealth_sync(p_page)
        
        try:
            self.logger.info(f"Harvesting item: {url}")
            p_page.goto(url, wait_until="domcontentloaded", timeout=60000)
            self.human_delay(2000, 4000)
            
            html_content = p_page.content()
            self.cache_html(item_id, html_content, url=url)
            
            soup = BeautifulSoup(html_content, "html.parser")
            h1 = soup.find("h1")
            title = h1.get_text(strip=True) if h1 else "Cached Item"

            price = None
            price_currency = None
            price_node = soup.select_one(".product-price__current-price, .flash-sale-price, [class*='price']")
            if price_node:
                raw_price = re.sub(r"[^\d.,]", "", price_node.get_text()).strip()
                if raw_price:
                    price = raw_price
                    price_currency = "VND"

            author = None
            author_node = soup.select_one("[itemprop='author'], .author, [class*='author']")
            if author_node:
                author = author_node.get_text(strip=True)

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=author,
                isbn=extract_isbn(soup),
                price=price,
                price_currency=price_currency,
                listing_url=url,
                condition="New (Tiki.vn Retail)"
            )
            self.save_item(item)
        finally:
            p_page.close()


TikiVnSpider = TikiSpider


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    spider = TikiSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items or 50,
    )
    spider.run()
