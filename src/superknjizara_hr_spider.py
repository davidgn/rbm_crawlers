import json
import urllib.parse
import requests
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class SuperknjizaraHrSpider(BaseSpider):
    """
    Spider for Superknjižara (Croatia).
    Uses the internal POST API /get_products to bypass Cloudflare and retrieve results.
    """
    def __init__(self, limit_pages=1, **kwargs):
        # We set limit_pages to 1 because the API returns up to 90 items in one go,
        # and pagination via the API requires specific session states we bypass.
        super().__init__(platform_name="Superknjižara", territory="Croatia")
        self.limit_pages = limit_pages
        self.api_url = "https://www.superknjizara.hr/get_products"
        self.base_url = "https://www.superknjizara.hr"

    def run(self, search_term=None):
        query = search_term or "University of Chicago Press"
        self.logger.info(f"Starting crawler for Superknjižara. Query: {query}")
        
        headers = {
            'X-Requested-With': 'XMLHttpRequest',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/110.0.0.0 Safari/537.36',
            'Accept': 'application/json, text/javascript, */*; q=0.01'
        }
        
        data = {
            'get_all_products': '0',
            's': '1',
            'keyword': query
        }

        try:
            r = requests.post(self.api_url, headers=headers, data=data, timeout=30)
            if r.status_code != 200:
                self.logger.warning(f"Got status {r.status_code} from API. Stopping.")
                return

            try:
                json_data = r.json()
            except json.JSONDecodeError:
                self.logger.error("Failed to parse JSON response from API.")
                return

            grid_html = json_data.get("grid_html", "")
            if not grid_html:
                self.logger.info("No grid_html found in response. End of results.")
                return

            soup = BeautifulSoup(grid_html, 'html.parser')
            items = soup.select('.product-display-grid.item')
            self.logger.info(f"Found {len(items)} items in API response.")

            for item in items:
                title_el = item.select_one('.product-info h3 a.product-click')
                if not title_el:
                    continue
                    
                title = title_el.get_text(strip=True)
                url = title_el.get('href', '')
                if url.startswith('/'):
                    url = self.base_url + url

                price_el = item.select_one('.prices .price:not(.invalid) strong')
                price = price_el.get_text(strip=True) if price_el else ""
                
                author_el = item.select_one('.authors .author a')
                author = author_el.get_text(strip=True) if author_el else ""

                listing = BookListing(
                    title=title,
                    listing_url=url,
                    price=price,
                    author=author,
                    platform=self.platform_name,
                    territory=self.territory,
                )
                self.save_item(listing)
                
        except Exception as e:
            self.logger.error(f"Error fetching API: {e}")

if __name__ == "__main__":
    spider = SuperknjizaraHrSpider()
    spider.run()
