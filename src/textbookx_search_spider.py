import argparse
import logging
import re
from urllib.parse import urljoin
from curl_cffi import requests
from base_spider import BaseSpider
from models import BookListing

class TextbookXSearchSpider(BaseSpider):
    """
    A generic spider for Akademos TextbookX platforms.
    Queries the /fastsearch2.php endpoint directly using curl_cffi.
    """
    def __init__(
        self,
        platform_name: str,
        subdomain: str,
        territory: str = "United States",
        price_currency: str = "USD",
        limit_pages: int = 5,
        limit_items: int | None = None,
        **kwargs
    ):
        super().__init__(platform_name=platform_name, territory=territory)
        self.subdomain = subdomain
        self.base_url = f"https://{subdomain}.textbookx.com"
        self.price_currency = price_currency
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = requests.Session(impersonate="chrome110", timeout=30.0)

    def run(self, search_term: str = None):
        if not search_term:
            import os
            search_term = os.getenv("RBM_SEARCH_TERM", "potter")

        self.logger.info(f"Starting TextbookX Search crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")

        # TextbookX fastsearch results are paginated via &p= parameter.
        for page in range(1, self.limit_pages + 1):
            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                break

            url = (
                f"{self.base_url}/fastsearch2.php"
                f"?s={search_term.replace(' ', '+')}"
                f"&product=book"
                f"&act=new"
                f"&p={page}"
            )
            self.logger.info(f"Fetching TextbookX page {page}: {url}")

            try:
                r = self.client.get(url)
                if r.status_code != 200:
                    self.logger.warning(f"Got status {r.status_code} for {url}")
                    break

                from bs4 import BeautifulSoup
                soup = BeautifulSoup(r.text, 'html.parser')
                
                # Each book listing text-link has class "book_title" and is inside a "tr"
                links = soup.find_all('a', class_='book_title')
                valid_items_found = 0
                
                for title_a in links:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break

                    title = title_a.text.strip()
                    if not title:
                        continue # Skip the thumbnail link (which has no text)
                        
                    tr = title_a.find_parent('tr')
                    if not tr:
                        continue
                        
                    try:
                        self._parse_row(title, title_a['href'], tr)
                        valid_items_found += 1
                    except Exception as e:
                        self.logger.error(f"Error parsing TextbookX row: {e}")

                if valid_items_found == 0:
                    self.logger.info("No items found on this page. Stopping.")
                    break

            except Exception as e:
                self.logger.error(f"Failed to fetch page {page}: {e}")
                break

        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_row(self, title, href, tr):
        # Extract ISBN from URL path like /book/Pastor-Potters-Punkte/9781938367632/
        isbn = None
        isbn_match = re.search(r'/(\d{10}|\d{13})/?$', href)
        if isbn_match:
            isbn = isbn_match.group(1)

        listing_url = urljoin(self.base_url, href)
        row_text = tr.get_text(separator=' ', strip=True)

        # Parse Author
        author = None
        auth_match = re.search(r'by\s+(.*?)\s+Published by', row_text)
        if auth_match:
            author = auth_match.group(1).strip()

        # Parse Publisher
        publisher = None
        pub_match = re.search(r'Published by\s+(.*?)\s+on', row_text)
        if pub_match:
            publisher = pub_match.group(1).strip()

        # Parse Price (prefer BUY NEW, fallback to BUY MARKETPLACE)
        price_val = None
        new_match = re.search(r'BUY NEW:\s*\$(\d+(?:\.\d+)?)', row_text)
        if new_match:
            price_val = new_match.group(1)
        else:
            mkt_match = re.search(r'BUY MARKETPLACE:\s*from\s*\$(\d+(?:\.\d+)?)', row_text)
            if mkt_match:
                price_val = mkt_match.group(1)

        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            price_currency=self.price_currency,
            listing_url=listing_url,
            isbn=isbn
        )
        if publisher:
            setattr(book, 'publisher', publisher)
            
        self.save_item(book)

if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="TextbookX Search Spider")
    parser.add_argument("--subdomain", type=str, required=True, help="TextbookX subdomain (e.g. usd)")
    parser.add_argument("--name", type=str, default="TextbookX Store")
    parser.add_argument("--query", type=str, default="potter")
    args = parser.parse_args()
    
    spider = TextbookXSearchSpider(platform_name=args.name, subdomain=args.subdomain)
    spider.run(search_term=args.query)
