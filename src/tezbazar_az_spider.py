import argparse
import time
import re
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class TezbazarAzSpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Tezbazar.az", territory="Azerbaijan")
        self.base_url = "https://tezbazar.az/kitab-ve-jurnallar"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers={
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
        })

    def run(self):
        self.logger.info(f"Starting Tezbazar.az harvester. Limit: {self.limit_pages} pages.")
        
        for page_num in range(1, self.limit_pages + 1):
            url = f"{self.base_url}?page={page_num}" if page_num > 1 else self.base_url
            self.logger.info(f"Fetching category page {page_num}: {url}")
            
            try:
                resp = self.client.get(url)
                if resp.status_code != 200:
                    self.logger.info("Reached end of pagination or hit 404.")
                    break
                    
                soup = BeautifulSoup(resp.text, "html.parser")
                products = soup.find_all("div", class_="prodname")
                links = []
                for p in products:
                    a = p.find("a")
                    if a and a.get("href"):
                        href = a.get("href")
                        links.append("https://tezbazar.az" + href)
                        
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
            
            title = "Unknown"
            title_elem = soup.find("h1")
            if title_elem:
                title = title_elem.text.strip()
            
            price = None
            price_elem = soup.find("span", class_="pricecolor")
            if price_elem:
                price = price_elem.text.strip()
                
            comments = None
            desc_elem = soup.find("p", class_="infop100 fullteshow")
            if desc_elem:
                comments = desc_elem.text.strip()
                
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                condition="Old",
                category="Hobbi və asudə / Kitab və jurnallar",
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
    spider = TezbazarAzSpider(limit_pages=args.limit)
    spider.run()
