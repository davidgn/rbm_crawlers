import argparse
import random
import re
import httpx
from bs4 import BeautifulSoup
import time
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class UsedBooksFactorySpider(BaseSpider):
    HEADERS = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    }

    def __init__(self, limit_pages: int = 100, limit_items: int | None = None, query: str | None = None):
        super().__init__(platform_name="UsedBooksFactory", territory="India")
        self.base_category_url = "https://www.usedbooksfactory.com/buy-second-hand-old-books/category/RECENTLY-ADDED-BOOKS"
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.query = query
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def _get_robust_response(self, url: str, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                headers = self.HEADERS.copy()
                headers["User-Agent"] = random.choice([
                    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15",
                    "Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0"
                ])
                resp = self.client.get(url, headers=headers)
                if resp.status_code in [403, 429, 500, 502, 503, 504]:
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

    def run(self):
        self.logger.info(f"Starting Enhanced UsedBooksFactory metadata-aware crawler. Limit: {self.limit_pages} pages.")
        
        for page_num in range(1, self.limit_pages + 1):
            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                break
            url = f"{self.base_category_url}?page={page_num}"
            self.logger.info(f"Fetching listing page {page_num}: {url}")
            
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200:
                self.logger.error(f"Failed to fetch {url}")
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            product_list = soup.find("ul", class_="aa-product-catg")
            if not product_list:
                break
                
            items = product_list.find_all("li", recursive=False)
            if not items:
                break

            for li in items:
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break
                try:
                    self._process_listing_item(li)
                except Exception as e:
                    self.logger.error(f"Error processing item: {e}")

            pagination = soup.find("ul", class_="pagination")
            if not pagination or not pagination.find("a", href=lambda h: h and f"page={page_num+1}" in h):
                break
                
            time.sleep(1)
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _process_listing_item(self, li):
        title_a = li.find("h3", class_="aa-product-title")
        if not title_a:
            title_a = li.find("h4", class_="aa-product-title")
        if not title_a or not title_a.find("a"):
            return
            
        title_link = title_a.find("a")
        listing_url = urljoin("https://www.usedbooksfactory.com", title_link.get("href"))
        
        if listing_url in self._seen_urls:
            return

        price_val = None
        price_curr = None
        add_btn = li.find("a", class_="add_to_cart")
        if add_btn and add_btn.get("data-price"):
            raw_p = add_btn.get("data-price")
            try:
                price_val = f"{float(raw_p):.2f}"
                price_curr = "INR"
            except ValueError:
                price_val = raw_p
                price_curr = "INR"

        self._scrape_detail(listing_url, price_val, price_curr)

    def _scrape_detail(self, url, fallback_price, fallback_currency):
        try:
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200:
                self.logger.error(f"Failed detail page fetch {url}")
                return
            soup = BeautifulSoup(resp.text, "html.parser")
            
            details = {}
            table = soup.find("table", class_="table-bordered")
            if table:
                rows = table.find_all("tr", class_="techSpecRow")
                for row in rows:
                    cols = row.find_all("td")
                    if len(cols) >= 2:
                        label = cols[0].text.strip().lower()
                        value = cols[1].text.strip()
                        details[label] = value

            title_author = details.get("title/author:", "")
            title = ""
            author = None
            if "/" in title_author:
                parts = title_author.split("/", 1)
                title = parts[0].strip()
                author = parts[1].strip()
            else:
                title = title_author.strip()

            isbn = details.get("isbn:")
            publisher = details.get("publisher:")
            year = details.get("year:")
            
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title or "Unknown Title",
                author=author,
                isbn=isbn,
                publisher=publisher,
                publication_year=year,
                price=fallback_price,
                price_currency=fallback_currency,
                listing_url=url,
            )
            
            item = self.scavenge_metadata(resp.text, item)
            
            desc_elem = soup.find("div", id="description")
            if desc_elem:
                item.seller_comments = desc_elem.get_text(strip=True)
                item = self.scavenge_metadata(item.seller_comments, item)

            self.save_item(item)
            self.cache_html(url.split("/")[-1].replace(".html", ""), resp.text, url=url)
            
        except Exception as e:
            self.logger.error(f"Error crawling detail page {url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=5)
    parser.add_argument("--limit-pages", type=int, default=None)
    parser.add_argument("--limit-items", type=int, default=None)
    parser.add_argument("--query", type=str, default=None)
    args, _ = parser.parse_known_args()
    spider = UsedBooksFactorySpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
        query=args.query,
    )
    spider.run()
