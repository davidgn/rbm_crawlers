import httpx
import time
from models import BookListing
from base_spider import BaseSpider

class JarirSpider(BaseSpider):
    """
    Spider for Jarir Bookstore (Saudi Arabia) using their Constructor.io search API.
    """
    def __init__(self, limit_pages: int = 10):
        super().__init__(platform_name="Jarir", territory="Saudi Arabia")
        self.api_key = "key_KcSYfmQTEwRpBnd9"
        self.api_base = "https://ac.cnstrc.com/search"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)

    def run(self):
        self.logger.info(f"Starting Jarir API crawler. Limit: {self.limit_pages} pages.")
        
        search_terms = ["Harry Potter", "Tolkien", "Arabic Books"]
        
        for term in search_terms:
            for page in range(1, self.limit_pages + 1):
                url = f"{self.api_base}/{term}?key={self.api_key}&page={page}&num_results_per_page=50"
                self.logger.info(f"Fetching {url}")
                
                try:
                    response = self.client.get(url, headers=self.get_random_headers())
                    response.raise_for_status()
                    data = response.json()
                    
                    results = data.get("response", {}).get("results", [])
                    if not results:
                        break
                        
                    for res in results:
                        self._parse_result(res)
                        
                    total = data.get("response", {}).get("total_num_results", 0)
                    if page * 50 >= total:
                        break
                        
                except Exception as e:
                    self.logger.error(f"Failed to fetch {url}: {e}")
                    break
                    
                time.sleep(1)

        self.logger.info(f"Finished Jarir. Scraped {self.items_scraped} items.")

    def _parse_result(self, res: dict):
        data = res.get("data", {})
        title = res.get("value", "")
        
        # Determine listing URL - Jarir uses various formats
        listing_url = data.get("url")
        if listing_url and not listing_url.startswith("http"):
            listing_url = f"https://www.jarir.com{listing_url}"
            
        price_val = None
        if "price" in data:
            price_val = f"SAR {data['price']}"
            
        author = data.get("author") or data.get("brand")

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            listing_url=listing_url or "",
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = JarirSpider(limit_pages=1)
    spider.run()
