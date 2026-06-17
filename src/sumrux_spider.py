import argparse
import json
import xml.etree.ElementTree as ET
import httpx
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing
from isbn_utils import normalize_isbn

class SumruxSpider(BaseSpider):
    def __init__(self, limit_pages=3, limit_items=50):
        super().__init__(platform_name="Sumrux", territory="India")
        self.base_url = "https://www.sumrux.com"
        self.sitemap_url = f"{self.base_url}/store-products-sitemap.xml"
        self.limit_pages = limit_pages # Not strictly pages, but we'll use it to limit processing
        self.limit_items = limit_items
        self.client = httpx.Client(
            timeout=30.0, 
            follow_redirects=True,
            headers={
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
            }
        )

    def run(self):
        self.logger.info(f"Starting Sumrux crawler. Limit: {self.limit_items} items.")
        
        try:
            response = self.client.get(self.sitemap_url)
            if response.status_code != 200:
                self.logger.error(f"Failed to fetch sitemap: {response.status_code}")
                return
                
            # Parse sitemap XML
            root = ET.fromstring(response.content)
            # Handle namespaces
            ns = {'ns': 'http://www.sitemaps.org/schemas/sitemap/0.9'}
            urls = [loc.text for loc in root.findall('.//ns:loc', ns)]
            
            self.logger.info(f"Found {len(urls)} product URLs in sitemap.")
            
            for url in urls:
                if self.items_scraped >= self.limit_items:
                    break
                    
                try:
                    self._parse_product_page(url)
                except Exception as e:
                    self.logger.error(f"Error parsing product {url}: {e}")
                    
        except Exception as e:
            self.logger.error(f"Error in crawler: {e}")

        self.logger.info(f"Finished Sumrux. Scraped {self.items_scraped} items.")

    def _parse_product_page(self, url):
        response = self.client.get(url)
        if response.status_code != 200:
            self.logger.warning(f"Failed to fetch {url}, status: {response.status_code}")
            return

        soup = BeautifulSoup(response.text, "html.parser")
        
        # Wix usually puts data in application/ld+json
        json_ld_tag = soup.find("script", type="application/ld+json")
        if not json_ld_tag:
            self.logger.warning(f"No JSON-LD found on {url}")
            return
            
        data = json.loads(json_ld_tag.string)
        
        if data.get("@type") != "Product":
            return

        title = data.get("name")
        description = data.get("description")
        
        offers = data.get("Offers", {})
        price = offers.get("price")
        currency = offers.get("priceCurrency", "INR")
        price_text = f"{currency} {price}" if price else None
        
        # Try to extract ISBN from description
        isbn = normalize_isbn(title) or normalize_isbn(description)
        
        self.save_item(BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=price_text,
            isbn=isbn,
            listing_url=url,
            seller_comments=description
        ))

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Sumrux India crawler")
    parser.add_argument("--limit-items", type=int, default=50, help="Max items to fetch")
    args = parser.parse_args()
    spider = SumruxSpider(limit_items=args.limit_items)
    spider.run()
