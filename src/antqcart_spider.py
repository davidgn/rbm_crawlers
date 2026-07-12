import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing
from isbn_utils import extract_isbn

class AntqCartSpider(BaseSpider):
    def __init__(self, limit_pages=10):
        super().__init__(platform_name="AntqCart", territory="India")
        self.base_url = "https://antqcart.com"
        self.shop_url = f"{self.base_url}/shop/"
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, 
            follow_redirects=True,
            headers={
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
            }
        )

    def _get_robust_response(self, url, params=None, max_retries=3):
        for attempt in range(max_retries):
            try:
                resp = self.client.get(url, params=params)
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
        self.logger.info(f"Starting AntqCart crawler. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            url = self.shop_url if page == 1 else f"{self.shop_url}page/{page}/"
            try:
                response = self._get_robust_response(url)
                if not response or response.status_code != 200:
                    self.logger.warning(f"Failed to fetch {url} or non-200 status")
                    break
                
                if not self._parse_page(response.text):
                    self.logger.info("No more items found or parse error.")
                    break
                    
            except Exception as e:
                self.logger.error(f"Error fetching {url}: {e}")
                break

        self.logger.info(f"Finished AntqCart. Scraped {self.items_scraped} items.")

    def _parse_page(self, html):
        soup = BeautifulSoup(html, "html.parser")
        # AntqCart uses <li> tags with class "title" for book titles
        title_items = soup.find_all("li", class_="title")
        
        if not title_items:
            return False
            
        for title_item in title_items:
            try:
                # Structure: <li class="title"><h2><a href="...">Title</a></h2></li>
                link_tag = title_item.find("a")
                if not link_tag:
                    continue
                    
                title = link_tag.get_text(strip=True)
                listing_url = link_tag.get("href")
                
                # The price is in a sibling or nearby <li> with class "price-wrap"
                # But it's easier to find the parent <ul> and look for class "price"
                parent_ul = title_item.find_parent("ul")
                price = None
                price_currency = None
                if parent_ul:
                    price_tag = parent_ul.find("span", class_="price")
                    if price_tag:
                        # WooCommerce price can have <del> and <ins>
                        ins_tag = price_tag.find("ins")
                        raw_price_str = ins_tag.get_text(strip=True) if ins_tag else price_tag.get_text(strip=True)
                        clean_p = re.sub(r"[^\d.,]", "", raw_price_str).strip()
                        if clean_p:
                            price = clean_p
                            price_currency = "INR"
                
                # Category is also in a sibling <li> with class "category"
                category = None
                if parent_ul:
                    category_tag = parent_ul.find("li", class_="category")
                    if category_tag:
                        category = category_tag.get_text(separator=", ", strip=True)

                # Description is in <li> class "woo-desc"
                description = None
                if parent_ul:
                    desc_tag = parent_ul.find("li", class_="woo-desc")
                    if desc_tag:
                        description = desc_tag.get_text(strip=True)

                self.save_item(BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    isbn=extract_isbn(parent_ul) if parent_ul else None,
                    price=price,
                    price_currency=price_currency,
                    category=category,
                    listing_url=listing_url,
                    seller_comments=description
                ))
            except Exception as e:
                self.logger.error(f"Error parsing item: {e}")
                continue
                
        return True

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="AntqCart India crawler")
    parser.add_argument("--limit", type=int, default=10, help="Max pages to fetch")
    args = parser.parse_args()
    spider = AntqCartSpider(limit_pages=args.limit)
    spider.run()
