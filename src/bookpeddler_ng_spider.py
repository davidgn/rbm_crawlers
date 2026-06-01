import argparse
import time
import re
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class BookPeddlerNgSpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Bookpeddler.ng", territory="Nigeria")
        self.base_url = "https://bookpeddler.ng/shop/"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers={
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
        })

    def run(self):
        self.logger.info(f"Starting Bookpeddler.ng harvester. Limit: {self.limit_pages} pages.")
        
        for page_num in range(1, self.limit_pages + 1):
            url = f"{self.base_url}page/{page_num}/" if page_num > 1 else self.base_url
            self.logger.info(f"Fetching shop page {page_num}: {url}")
            
            try:
                resp = self.client.get(url)
                if resp.status_code != 200:
                    self.logger.info("Reached end of pagination or hit 404.")
                    break
                    
                soup = BeautifulSoup(resp.text, "html.parser")
                products = soup.find_all("a", class_="woocommerce-LoopProduct-link")
                links = list(dict.fromkeys([p.get("href") for p in products if p.get("href")]))
                
                self.logger.info(f"Found {len(links)} links on page {page_num}")
                if not links: break
                
                for link in links:
                    if link in self._seen_urls: continue
                    self._scrape_detail(link)
                    time.sleep(1)
                    
            except Exception as e:
                self.logger.error(f"Error fetching {url}: {e}")
                
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _scrape_detail(self, url):
        try:
            resp = self.client.get(url)
            resp.raise_for_status()
            soup = BeautifulSoup(resp.text, "html.parser")
            
            # Title
            title_elem = soup.find("h1", class_="product_title")
            title = title_elem.text.strip() if title_elem else "Unknown"
            
            # Price
            price = None
            price_elem = soup.find("p", class_="price")
            if price_elem:
                bdi = price_elem.find("bdi")
                if bdi:
                    price_text = bdi.text.replace("&#8358;", "NGN ").strip()
                    price = re.sub(r"[^\d.,a-zA-Z ]", "", price_text).replace("NGN", "NGN ").strip()
                    if not price.startswith("NGN"): price = "NGN " + price
            
            # Description (Seller Comments)
            comments = None
            desc_elem = soup.find("div", class_="woocommerce-product-details__short-description")
            if desc_elem:
                comments = desc_elem.text.strip()
                
            # Categories
            category = None
            cat_elem = soup.find("span", class_="posted_in")
            if cat_elem:
                cats = [a.text.strip() for a in cat_elem.find_all("a")]
                category = ", ".join(cats)
                
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                category=category,
                condition="Old",
                seller_comments=comments,
                listing_url=url
            )
            self.save_item(item)
            
        except Exception as e:
            self.logger.error(f"Error scraping detail {url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    args = parser.parse_args()
    spider = BookPeddlerNgSpider(limit_pages=args.limit)
    spider.run()
