import httpx
import time
import html
import re
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider
from isbn_utils import normalize_isbn

class BookFlowSpider(BaseSpider):
    """
    Spider for BookFlow using Cloudflare Origin IP bypass.
    Extracts directly from the WP REST API on the origin server.
    """
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="BookFlow", territory="India")
        self.limit_pages = limit_pages
        self.origin_ip = "103.171.45.137"
        self.host = "bookflow.in"
        self.base_url = "https://bookflow.in"
        
        # Connect to origin IP, but send the real Host header to bypass Cloudflare
        self.client = httpx.Client(
            base_url=f"https://{self.origin_ip}",
            headers={
                "Host": self.host,
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
                "Accept": "application/json, text/plain, */*"
            },
            verify=False,
            timeout=30.0,
            follow_redirects=True
        )

    def _get_robust_response(self, url, params=None, max_retries=3):
        for attempt in range(max_retries):
            try:
                resp = self.client.get(url, params=params)
                if resp.status_code in [403, 429, 500, 502, 503, 504]:
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

    def run(self):
        self.logger.info(f"Starting Origin Bypass API crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            path = f"/wp-json/wp/v2/ad_post?page={page}&per_page=100"
            self.logger.info(f"Fetching page {page}: {self.base_url}{path}")
            
            try:
                response = self._get_robust_response(path)
                if not response or response.status_code in [400, 404]:
                    self.logger.info(f"Reached end of pagination at page {page}.")
                    break
                response.raise_for_status()
                data = response.json()
                
                if not data or not isinstance(data, list):
                    self.logger.info("No more posts found. Stopping.")
                    break
                    
                for post in data:
                    self._parse_post(post)
                    
            except Exception as e:
                self.logger.error(f"Failed to fetch or parse {path}: {e}")
                break
                
            time.sleep(1)
            
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_post(self, post):
        title = post.get("title", {}).get("rendered", "")
        title = html.unescape(title)
        listing_url = post.get("link", "")
        
        content_html = post.get("content", {}).get("rendered", "")
        excerpt_html = post.get("excerpt", {}).get("rendered", "")
        
        comments = None
        if content_html or excerpt_html:
            text = BeautifulSoup(content_html or excerpt_html, "html.parser").get_text(" ", strip=True)
            comments = re.sub(r"\s+", " ", text).strip()[:500]
            
        isbn = normalize_isbn(title) or (normalize_isbn(comments) if comments else None)
        
        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=None,
            isbn=isbn,
            price=None,
            price_currency=None,
            listing_url=listing_url,
            seller_comments=comments or None,
        )
        self.save_item(book)

if __name__ == "__main__":
    spider = BookFlowSpider(limit_pages=2)
    spider.run()
