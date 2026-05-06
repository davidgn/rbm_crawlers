import argparse
import httpx
from bs4 import BeautifulSoup
import time
import re
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class KingstoneSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Kingstone.com.tw", territory="Taiwan")
        self.limit_pages = limit_pages
        self.base_url = "https://www.kingstone.com.tw/"
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)
        self.headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'}

    def run(self):
        self.logger.info(f"Starting Kingstone Crawler. Limit: {self.limit_pages} pages.")
        
        # Start with some main book categories
        # Example: 1 (Chinese Books), 2 (English Books)
        # Note: Kingstone URLs are complex, let's start from a generic book search or home
        url = "https://www.kingstone.com.tw/new/book"
        
        for page in range(1, self.limit_pages + 1):
            target_url = f"{url}/?page={page}"
            self.logger.info(f"Fetching page {page}: {target_url}")
            
            try:
                resp = self.client.get(target_url, headers=self.headers)
                resp.raise_for_status()
                soup = BeautifulSoup(resp.text, "html.parser")
                
                # Identify product links
                links = soup.find_all("a", href=True)
                product_paths = list(set([l["href"] for l in links if "/basic/" in l["href"]]))
                
                if not product_paths:
                    self.logger.warning("No product links found on page. Ending.")
                    break
                    
                for path in product_paths:
                    abs_url = urljoin(self.base_url, path)
                    try:
                        self._scrape_detail(abs_url)
                        time.sleep(0.5) # Politeness
                    except Exception as e:
                        self.logger.error(f"Error scraping {abs_url}: {e}")
                
            except Exception as e:
                self.logger.error(f"Page fetch failed: {e}")
                break

    def _scrape_detail(self, url):
        resp = self.client.get(url, headers=self.headers)
        if resp.status_code != 200: return
        
        soup = BeautifulSoup(resp.text, "html.parser")
        
        title = soup.find("h1").text.strip() if soup.find("h1") else "Unknown"
        
        details = {}
        # Parse LI for metadata
        for li in soup.find_all("li"):
            text = li.get_text(separator="|", strip=True)
            if ":" in text:
                parts = text.split(":", 1)
                details[parts[0].strip()] = parts[1].strip()
            elif "ISBN" in text:
                # ISBN is sometimes in the next sibling or text node
                lines = [line.strip() for line in li.get_text().split("\n") if line.strip()]
                if "ISBN" in lines:
                    idx = lines.index("ISBN")
                    if idx + 1 < len(lines):
                        details["ISBN"] = lines[idx+1]

        publisher = details.get("出版社")
        pub_date = details.get("出版日")
        isbn = details.get("ISBN")
        author = details.get("作者")
        
        price = None
        # Look for price tags
        price_tags = soup.find_all(string=re.compile(r"元"))
        for pt in price_tags:
             m = re.search(r"(\d+)\s*元", pt)
             if m:
                 price = "TWD " + m.group(1)
                 break

        listing = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=pub_date.split("/")[0] if pub_date and "/" in pub_date else pub_date,
            price=price,
            listing_url=url,
            condition="New" # Primarily retail
        )
        self.save_item(listing)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    args = parser.parse_args()
    KingstoneSpider(limit_pages=args.limit).run()
