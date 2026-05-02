import httpx
from bs4 import BeautifulSoup
import time
import re
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class UsedBooksFactorySpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="UsedBooksFactory", territory="India")
        self.base_category_url = "https://www.usedbooksfactory.com/buy-second-hand-old-books/category/RECENTLY-ADDED-BOOKS"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)

    def run(self):
        self.logger.info(f"Starting UsedBooksFactory crawler. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            url = f"{self.base_category_url}?page={page}"
            self.logger.info(f"Fetching page {page}: {url}")
            
            try:
                response = self.client.get(url)
                response.raise_for_status()
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break

            soup = BeautifulSoup(response.text, "html.parser")
            
            product_list = soup.find("ul", class_="aa-product-catg")
            if not product_list:
                self.logger.warning(f"No product list found on page {page}. Stopping.")
                break
                
            items = product_list.find_all("li", recursive=False)
            if not items:
                self.logger.info(f"No items found on page {page}. Stopping.")
                break

            for item in items:
                try:
                    self._parse_item(item)
                except Exception as e:
                    self.logger.error(f"Error parsing item on page {page}: {e}")

            # Check if there's a next page link
            pagination = soup.find("ul", class_="pagination")
            if pagination:
                next_page_link = pagination.find("a", href=lambda h: h and f"page={page+1}" in h)
                if not next_page_link:
                    self.logger.info("No next page link found. Reached end of pagination.")
                    break
            else:
                break
                
            time.sleep(1) # Polite delay
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _parse_item(self, li):
        # Extract URL
        title_h3 = li.find("h3", class_="aa-product-title")
        if not title_h3:
            # Maybe it's an h4
            title_h3 = li.find("h4", class_="aa-product-title")
            
        if not title_h3 or not title_h3.find("a"):
            return
            
        title_a = title_h3.find("a")
        title = title_a.text.strip()
        listing_url = urljoin("https://www.usedbooksfactory.com", title_a.get("href"))

        # Try to split title and author if there's a dash
        author = None
        if " - " in title:
            parts = title.rsplit(" - ", 1)
            title = parts[0].strip()
            author = parts[1].strip()

        # Extract Price from the add_to_cart button
        price_val = None
        add_btn = li.find("a", class_="add_to_cart")
        if add_btn and add_btn.get("data-price"):
            price_val = "INR " + add_btn.get("data-price")
        else:
            # Fallback to span
            price_span = li.find("span", class_="aa-product-price")
            if price_span:
                price_text = price_span.text.strip()
                match = re.search(r"[\d,]+", price_text)
                if match:
                    price_val = "INR " + match.group(0).replace(",", "")

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
    spider = UsedBooksFactorySpider(limit_pages=3) # Dry run limit
    spider.run()
