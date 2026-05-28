import httpx
from bs4 import BeautifulSoup
import time
import re
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class HTMLSearchSpider(BaseSpider):
    """
    A generic spider for Indian bookstores that parses HTML search result pages.
    """
    def __init__(
        self,
        platform_name: str,
        base_url: str,
        search_path: str,
        selectors: dict,
        territory: str = "India",
        limit_pages: int = 10,
        limit_items: int | None = None,
        price_currency: str = "INR",
    ):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url.rstrip("/")
        self.search_path = search_path
        self.selectors = selectors
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.items_attempted = 0
        self.price_currency = price_currency
        # Adding browser-like headers to bypass simple blocks
        self.client = httpx.Client(
            timeout=30.0, 
            follow_redirects=True, 
            verify=False,
            headers={
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
                'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8',
                'Accept-Language': 'en-US,en;q=0.5'
            }
        )

    def run(self):
        self.logger.info(f"Starting HTML Search crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        search_term = "Harry Potter" 
        
        for page in range(1, self.limit_pages + 1):
            if self.limit_items is not None and self.items_attempted >= self.limit_items:
                break
            url = f"{self.base_url}/{self.search_path}".format(query=search_term.replace(' ', '+'), page=page)
            self.logger.info(f"Fetching page {page}: {url}")
            
            try:
                # Rotate headers for each page request
                response = self.client.get(url, headers=self.get_random_headers())
                if response.status_code in [404, 400]:
                    self.logger.info("Reached end of pagination (404/400).")
                    break
                
                if response.status_code == 403 and "cloudflare" in response.text.lower():
                    self.logger.error("Blocked by Cloudflare. Manual Playwright required for this site.")
                    break
                    
                response.raise_for_status()
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break

            soup = BeautifulSoup(response.text, "html.parser")
            
            # Find the product container
            items = soup.select(self.selectors['container'])
            if not items:
                self.logger.info(f"No items found matching container '{self.selectors['container']}' on page {page}. Stopping.")
                break

            for item in items:
                if self.limit_items is not None and self.items_attempted >= self.limit_items:
                    break
                try:
                    self.items_attempted += 1
                    self._parse_item(item)
                except Exception as e:
                    self.logger.error(f"Error parsing item: {e}")

            time.sleep(2) # Polite delay
            
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_item(self, item_soup):
        # Title
        title_el = item_soup.select_one(self.selectors['title'])
        if not title_el:
            return
        title = title_el.text.strip()
        
        # URL
        link_el = item_soup.select_one(self.selectors.get('link', 'a'))
        listing_url = None
        if link_el and link_el.has_attr('href'):
            listing_url = urljoin(self.base_url, link_el['href'])
        else:
            fallback_link = item_soup.find('a', href=True)
            if fallback_link:
                listing_url = urljoin(self.base_url, fallback_link['href'])
        if not listing_url:
            return

        # Price
        price_val = None
        if 'price' in self.selectors:
            price_el = item_soup.select_one(self.selectors['price'])
            if price_el:
                price_text = price_el.text.strip()
                # Extract numeric value
                match = re.search(r"[\d,]+(?:\.\d+)?", price_text)
                if match:
                    price_val = f"{self.price_currency} " + match.group(0).replace(",", "")

        # Author (often embedded in title or subtitle)
        author = None
        if 'author' in self.selectors:
            author_el = item_soup.select_one(self.selectors['author'])
            if author_el:
                author = author_el.text.strip().replace("By ", "").strip()

        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(book)
