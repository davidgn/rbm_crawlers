import httpx
import time
import re
from urllib.parse import urljoin
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class OriginBypassSpider(BaseSpider):
    """
    A spider that bypasses Cloudflare by connecting directly to the origin server's IP address.
    """
    def __init__(self, platform_name: str, base_url: str, origin_ip: str, search_path: str, selectors: dict, limit_pages: int = 10):
        super().__init__(platform_name=platform_name, territory="India")
        self.base_url = base_url.rstrip("/")
        self.origin_ip = origin_ip
        self.search_path = search_path
        self.selectors = selectors
        self.limit_pages = limit_pages
        
        # Extract hostname from base_url for the Host header
        self.host = self.base_url.replace("https://", "").replace("http://", "").split("/")[0]
        
        # Configure client to connect to IP but send Host header
        # We use verify=False because the origin server usually has a self-signed or mismatching cert
        self.client = httpx.Client(
            base_url=f"https://{self.origin_ip}",
            headers={
                "Host": self.host,
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
                "Accept-Language": "en-US,en;q=0.5",
                "Connection": "keep-alive"
            },
            verify=False,
            timeout=30.0,
            follow_redirects=True
        )

    def run(self):
        self.logger.info(f"Starting Origin Bypass crawler for {self.platform_name} (via {self.origin_ip}). Limit: {self.limit_pages} pages.")
        search_term = "Harry Potter" 
        
        for page in range(1, self.limit_pages + 1):
            # Format the URL. Note: we use relative path because base_url is the IP
            path = f"/{self.search_path}".format(query=search_term.replace(' ', '+'), page=page)
            url = f"https://{self.host}{path}" # For logging
            self.logger.info(f"Fetching page {page}: {url}")
            
            try:
                response = self.client.get(path)
                if response.status_code in [404, 400]:
                    self.logger.info("Reached end of pagination.")
                    break
                response.raise_for_status()
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break

            soup = BeautifulSoup(response.text, "html.parser")
            items = soup.select(self.selectors['container'])
            if not items:
                self.logger.info(f"No items found matching container '{self.selectors['container']}' on page {page}. Stopping.")
                break

            for item in items:
                try:
                    self._parse_item(item)
                except Exception as e:
                    self.logger.error(f"Error parsing item: {e}")

            time.sleep(2)
            
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_item(self, item_soup):
        title_el = item_soup.select_one(self.selectors['title'])
        if not title_el: return
        title = title_el.text.strip()
        
        link_el = item_soup.select_one(self.selectors.get('link', 'a'))
        listing_url = None
        if link_el and link_el.has_attr('href'):
            # Ensure the link points to the real domain, not the IP
            listing_url = urljoin(self.base_url, link_el['href'])

        price_val = None
        if 'price' in self.selectors:
            price_el = item_soup.select_one(self.selectors['price'])
            if price_el:
                price_text = price_el.text.strip()
                match = re.search(r"[\d,]+(?:\.\d+)?", price_text)
                if match:
                    price_val = "INR " + match.group(0).replace(",", "")

        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=None,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(book)
