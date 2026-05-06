import argparse
import httpx
from bs4 import BeautifulSoup
import time
import re
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class TaazeSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="TAAZE.tw", territory="Taiwan")
        self.limit_pages = limit_pages
        self.base_url = "https://www.taaze.tw"
        self.headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'}
        self.client = httpx.Client(timeout=30.0, verify=False, follow_redirects=True)
        # Category prioritization: Foreign Language, Simplified Chinese, Japanese MOOK, then Traditional Chinese
        self.categories = [
            {"name": "Used Foreign", "params": "t=11&k=03&d=13"},
            {"name": "Used Simplified", "params": "t=11&k=03&d=12"},
            {"name": "Used Japanese", "params": "t=11&k=03&d=24"},
            {"name": "Used Chinese", "params": "t=11&k=03&d=00"}
        ]

    def run(self):
        self.logger.info(f"Starting TAAZE Crawler with Language & Category prioritization. Limit: {self.limit_pages} pages per category.")
        
        for cat in self.categories:
            self.logger.info(f"=== Crawling Category: {cat['name']} ===")
            
            for current_page in range(1, self.limit_pages + 1):
                # Using gift_index as a discovery surface that often bypasses deep pagination limits
                url = f"https://www.taaze.tw/gift_index.html?{cat['params']}&cp={current_page}&ps=30&cl=1"
                self.logger.info(f"Fetching page {current_page}: {url}")
                
                try:
                    resp = self.client.get(url, headers=self.headers)
                    soup = BeautifulSoup(resp.text, "html.parser")
                    
                    links = soup.find_all("a", href=True)
                    p_paths = [l["href"] for l in links if "products/" in l["href"]]
                    
                    if not p_paths:
                        self.logger.warning(f"No product links found for {cat['name']} at page {current_page}. Moving to next category.")
                        break
                        
                    for path in list(set(p_paths)):
                        abs_url = urljoin(self.base_url, path)
                        try:
                            self._scrape_detail(abs_url, cat['name'])
                            time.sleep(0.5)
                        except Exception as e:
                            self.logger.error(f"Error scraping {abs_url}: {e}")
                            
                except Exception as e:
                    self.logger.error(f"Page fetch failed: {e}")
                    break

    def _scrape_detail(self, url, category_label):
        resp = self.client.get(url, headers=self.headers)
        if resp.status_code != 200: return
        
        soup = BeautifulSoup(resp.text, "html.parser")
        text = soup.get_text()
        
        title = soup.find("h1").text.strip() if soup.find("h1") else "Unknown"
        
        isbn = None
        isbn_match = re.search(r"ISBN/ISSN[：:]\s*(\d+)", text)
        if isbn_match: isbn = isbn_match.group(1)
        
        publisher = None
        pub_match = re.search(r"出版社[：:]\s*([^\n|]+)", text)
        if pub_match: publisher = pub_match.group(1).split("出版日期")[0].strip()
        
        pub_year = None
        year_match = re.search(r"出版日期[：:]\s*(\d{4})", text)
        if year_match: pub_year = year_match.group(1)
        
        author = None
        author_match = re.search(r"作者[：:]\s*([^\n|]+)", text)
        if author_match: author = author_match.group(1).split("譯者")[0].strip()

        price = None
        price_match = re.search(r"元\s*(\d+)\s*元", text)
        if not price_match:
            price_match = re.search(r"(\d+)\s*元", text)
        if price_match: price = "TWD " + price_match.group(1)

        listing = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=pub_year,
            price=price,
            listing_url=url,
            category=category_label,
            condition="Used"
        )
        self.save_item(listing)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=50)
    args = parser.parse_args()
    TaazeSpider(limit_pages=args.limit).run()
