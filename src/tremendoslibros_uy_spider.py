import argparse
import time
import re
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class TremendosLibrosUySpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Tremendos Libros", territory="Uruguay")
        self.base_url = "https://tremendoslibros.com"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers={
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
        })

    def run(self):
        self.logger.info(f"Starting Tremendos Libros harvester. Limit: {self.limit_pages} pages.")
        
        genres = ["literatura", "filosofia", "historia", "politica", "biografias"]
        
        for genre in genres:
            url = f"{self.base_url}/genero/{genre}"
            self.logger.info(f"Fetching genre: {url}")
            
            try:
                resp = self.client.get(url)
                if resp.status_code != 200: continue
                
                soup = BeautifulSoup(resp.text, "html.parser")
                detail_links = soup.find_all("a", href=re.compile(r"/libro/"))
                links = list(dict.fromkeys([l.get("href") for l in detail_links]))
                
                self.logger.info(f"Found {len(links)} links in {genre}")
                
                for link in links:
                    abs_url = f"{self.base_url}{link}" if link.startswith("/") else link
                    if abs_url in self._seen_urls: continue
                    self._scrape_detail(abs_url)
                    time.sleep(1)
                    if self.items_scraped >= self.limit_pages * 20: break
                    
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
            
            author = None
            author_link = soup.find("a", href=re.compile(r"/autor/"))
            if author_link: author = author_link.text.strip()
            
            price = None
            price_container = soup.find("span", class_=re.compile(r"font-serif text-lg|text-base"))
            if price_container:
                spans = price_container.find_all("span")
                if not spans:
                    price = "UYU " + price_container.text.replace("$", "").strip()
                else:
                    for s in spans:
                        if "line-through" not in (s.get("class") or []):
                            # Check if it has an inner span for the actual value
                            inner = s.find_all("span")
                            if inner:
                                for ins in inner:
                                    if "line-through" not in (ins.get("class") or []):
                                        price = "UYU " + ins.text.replace("$", "").strip()
                                        break
                            else:
                                price = "UYU " + s.text.replace("$", "").strip()
                            if price: break

            if not price or "UYU *" in price:
                price_match = re.search(r"\$\s*([\d.,]+)", soup.text)
                if price_match:
                    price = "UYU " + price_match.group(1)
            
            publisher = None
            pub_link = soup.find("a", href=re.compile(r"/editorial/"))
            if pub_link: publisher = pub_link.text.strip()
            
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=author,
                publisher=publisher,
                price=price,
                condition="Used",
                listing_url=url
            )
            self.save_item(item)
            
        except Exception as e:
            self.logger.error(f"Error scraping detail {url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    args = parser.parse_args()
    spider = TremendosLibrosUySpider(limit_pages=args.limit)
    spider.run()
