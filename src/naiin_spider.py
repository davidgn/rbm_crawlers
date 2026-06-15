import argparse
import re
import time
from bs4 import BeautifulSoup
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider
from isbn_utils import normalize_isbn

class NaiinSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Naiin", territory="Thailand")
        self.limit_pages = limit_pages
        self.base_url = "https://www.naiin.com/category"

    def run(self):
        self.logger.info(f"Starting Naiin Thailand Harvest (Cache-First). Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Target 'New Releases' or general books
                target_url = "https://www.naiin.com/books"
                
                for current_page in range(1, self.limit_pages + 1):
                    # Naiin uses scroll or page params? Let's check common patterns
                    url = f"{target_url}?page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")
                    
                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=60000)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break
                    
                    # Discover product links: /product/detail/54321
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(set([l for l in links if "/product/detail/" in l]))
                    
                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}. Scrolling...")
                        page.evaluate("window.scrollBy(0, 1000)")
                        page.wait_for_timeout(2000)
                        links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                        product_links = list(set([l for l in links if "/product/detail/" in l]))

                    if not product_links: break
                        
                    for p_url in product_links:
                        try:
                            self._harvest_item(page, p_url)
                            page.wait_for_timeout(1000)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")
                            
            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, page, url):
        # Extract ID from /product/detail/12345
        item_id_match = re.search(r"detail/(\d+)", url)
        item_id = item_id_match.group(1) if item_id_match else str(time.time())
        
        self.logger.info(f"Harvesting item: {url}")
        page.goto(url, wait_until="domcontentloaded", timeout=60000)
        page.wait_for_timeout(2000)
        
        html_content = page.content()
        
        # CACHE FIRST
        self.cache_html(item_id, html_content)
        
        # Save minimal record
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title="Cached Item",
            listing_url=url,
            condition="New/E-book (Naiin Retail)"
        )
        self.save_item(item)

    def _extract(self, html: str, url: str) -> BookListing | None:
        soup = BeautifulSoup(html, "html.parser")
        title_tag = soup.title
        title = re.sub(r"\s*Books\s*$", "", title_tag.get_text(strip=True).split("|")[0].strip()) if title_tag else ""
        if not title:
            return None

        author_el = soup.find("a", class_=re.compile(r"author-name"))
        author = author_el.get_text(strip=True) if author_el else None

        price_el = soup.find("div", class_="price")
        price_text = price_el.get_text(strip=True) if price_el else ""
        price_m = re.search(r"([\d,.]+)\s*บาท", price_text)
        price = f"THB {price_m.group(1).replace(',', '')}" if price_m else None

        isbn = normalize_isbn(soup.get_text(" "))

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            price=price,
            listing_url=url,
        )


def _backfill_cached():
    import json as _json

    spider = NaiinSpider.__new__(NaiinSpider)
    BaseSpider.__init__(spider, "Naiin", "Thailand")
    data_file = spider.output_file

    existing: dict[str, dict] = {}
    if data_file.exists():
        with data_file.open(encoding="utf-8") as fh:
            for line in fh:
                line = line.strip()
                if line:
                    try:
                        d = _json.loads(line)
                        existing[d.get("listing_url", "")] = d
                    except Exception:
                        pass

    cache_dir = spider.cache_dir
    html_files = [f for f in cache_dir.glob("*.html")] if cache_dir.exists() else []
    print(f"Backfilling {len(html_files)} cached NAIIN pages…")

    updated = 0
    for html_file in html_files:
        item_id = html_file.stem
        url = f"https://www.naiin.com/product/detail/{item_id}"
        html = html_file.read_text(encoding="utf-8", errors="ignore")
        listing = spider._extract(html, url)
        if listing:
            existing[url] = listing.to_dict()
            updated += 1

    tmp = data_file.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for record in existing.values():
            fh.write(_json.dumps(record) + "\n")
    tmp.replace(data_file)
    print(f"Updated {updated} records. Total: {len(existing)}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    parser.add_argument("--backfill", action="store_true")
    args = parser.parse_args()
    if args.backfill:
        _backfill_cached()
    else:
        NaiinSpider(limit_pages=args.limit).run()
