import httpx
from bs4 import BeautifulSoup
import time
import re
import math
from models import BookListing
from base_spider import BaseSpider

class KitabainSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Kitabain", territory="Pakistan")
        self.base_url = "https://www.kitabain.com/books/all"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)

    def run(self):
        self.logger.info(f"Starting Kitabain crawler. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            url = f"{self.base_url}?page={page}"
            self.logger.info(f"Fetching page {page}: {url}")
            
            try:
                response = self.client.get(url)
                response.raise_for_status()
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break

            soup = BeautifulSoup(response.text, "html.parser")
            items = soup.find_all("div", class_="bookimgdiv")
            if not items:
                self.logger.info(f"No items found on page {page}. Stopping.")
                break

            for item in items:
                try:
                    self._parse_item(item)
                except Exception as e:
                    self.logger.error(f"Error parsing item on page {page}: {e}")

            # Check if there's a next page link
            pagination = soup.find(class_="pagination")
            if pagination:
                next_page_link = pagination.find("a", href=lambda h: h and f"page={page+1}" in h)
                if not next_page_link:
                    self.logger.info("No next page link found. Reached end of pagination.")
                    break
            else:
                break
                
            time.sleep(1) # Polite delay
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _parse_item(self, div):
        # Extract Title and URL
        title_a = div.find("p").find("a") if div.find("p") else None
        if not title_a:
            return
            
        title = title_a.text.strip()
        listing_url = title_a.get("href")
        if listing_url and listing_url.startswith("/"):
            listing_url = "https://www.kitabain.com" + listing_url

        # Extract Author
        author_p = div.find("p", class_="other_name")
        author = author_p.text.strip() if author_p else None

        # Extract Price
        price_val = None
        price_texts = div.find_all(string=re.compile(r"Rs"))
        for pt in price_texts:
            match = re.search(r"Rs\s*([\d,.]+)", pt)
            if match:
                price_val = "PKR " + match.group(1).replace(",", "")
                break

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = KitabainSpider(limit_pages=3) # Dry run limit
    spider.run()
