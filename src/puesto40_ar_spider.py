import argparse
import time
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class Puesto40ArSpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Puesto 40", territory="Argentina")
        self.base_url = "https://puesto40.com/libros-usados/"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers={
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
        })

    def run(self):
        self.logger.info(f"Starting Puesto40 harvester. Limit: {self.limit_pages} pages.")
        
        for page_num in range(1, self.limit_pages + 1):
            url = f"{self.base_url}?page={page_num}" if page_num > 1 else self.base_url
            self.logger.info(f"Fetching page {page_num}: {url}")
            
            try:
                resp = self.client.get(url)
                if resp.status_code != 200:
                    self.logger.info("Reached end of pagination or hit 404.")
                    break
                    
                soup = BeautifulSoup(resp.text, "html.parser")
                links = []
                for a in soup.find_all("a", href=True):
                    href = a.get("href")
                    if "/productos/" in href and not href.endswith("/productos/"):
                        links.append(href if href.startswith("http") else f"https://puesto40.com{href}")
                        
                links = list(dict.fromkeys(links))
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
            
            title_elem = soup.find("h1")
            title = title_elem.text.strip() if title_elem else "Unknown"
            
            price = None
            price_elem = soup.find("span", class_="js-price-display")
            if price_elem:
                price = "ARS " + price_elem.text.replace("$", "").strip()
                
            comments = None
            desc_elem = soup.find("div", class_="product-description")
            if desc_elem:
                comments = desc_elem.text.strip()
                
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                condition="Used",
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
    spider = Puesto40ArSpider(limit_pages=args.limit)
    spider.run()
