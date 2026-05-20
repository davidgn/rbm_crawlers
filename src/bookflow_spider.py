import httpx
import time
import html
from models import BookListing
from base_spider import BaseSpider

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

    def run(self):
        self.logger.info(f"Starting Origin Bypass API crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            path = f"/wp-json/wp/v2/ad_post?page={page}&per_page=100"
            self.logger.info(f"Fetching page {page}: {self.base_url}{path}")
            
            try:
                response = self.client.get(path)
                if response.status_code in [400, 404]:
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
        
        # WP REST API for AdForest doesn't expose price by default in standard fields,
        # but we capture what we have. Author can be null.
        
        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=None,
            price=None, # Price often stored in post meta not exposed here
            listing_url=listing_url,
        )
        self.save_item(book)

if __name__ == "__main__":
    spider = BookFlowSpider(limit_pages=2)
    spider.run()
