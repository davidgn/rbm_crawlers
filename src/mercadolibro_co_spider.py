import argparse
import time
import re
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class MercadoLibroCoSpider(BaseSpider):
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None):
        super().__init__(platform_name="MercadoLibro.com.co", territory="Colombia")
        self.base_url = "https://www.mercadolibro.com.co"
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers={
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
        })

    def run(self):
        self.logger.info(f"Starting MercadoLibro.com.co harvester. Limit: {self.limit_pages} pages.")
        
        for page_num in range(1, self.limit_pages + 1):
            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                break
            url = f"{self.base_url}/explorar/page/{page_num}/" if page_num > 1 else f"{self.base_url}/explorar/"
            self.logger.info(f"Fetching page {page_num}: {url}")
            
            try:
                resp = self.client.get(url)
                if resp.status_code != 200:
                    self.logger.info("Reached end of pagination or hit 404.")
                    break
                    
                soup = BeautifulSoup(resp.text, "html.parser")
                # Look for listing cards
                cards = soup.find_all("a", href=re.compile(r"/publicado/"))
                links = list(dict.fromkeys([c.get("href") for c in cards]))
                
                self.logger.info(f"Found {len(links)} links on page {page_num}")
                if not links: break
                
                for link in links:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
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
            
            # Title (usually entry-title or h1)
            title_elem = soup.find("h1", class_="entry-title")
            title = title_elem.text.strip() if title_elem else "Unknown"
            
            # Price
            price = None
            price_elem = soup.find("span", class_="hp-listing__price") or soup.find("div", class_="hp-listing__price")
            if not price_elem:
                # Look for a price in the text
                price_match = re.search(r"\$\s*[\d.,]+", soup.text)
                if price_match: price = "COP " + price_match.group(0).replace("$", "").strip()
            else:
                price = "COP " + price_elem.text.replace("$", "").strip()
                
            # Category
            category = None
            cat_elem = soup.find("div", class_="hp-listing__category")
            if cat_elem:
                category = cat_elem.text.strip()
                
            # Description
            comments = None
            desc_elem = soup.find("div", class_="hp-listing__description")
            if desc_elem:
                comments = desc_elem.text.strip()
                
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                category=category,
                condition="Used", # Marketplace default
                seller_comments=comments,
                listing_url=url
            )
            self.save_item(item)
            
        except Exception as e:
            self.logger.error(f"Error scraping detail {url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    spider = MercadoLibroCoSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
