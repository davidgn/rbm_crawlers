import argparse
import httpx
from bs4 import BeautifulSoup
import time
from models import BookListing
from base_spider import BaseSpider

class MedadSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="MedadBookshop", territory="Egypt")
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)
        # Main Categories on Medad
        self.categories = [
            {"name": "English Books", "url": "https://medadbookshop.com/books/fiction/novels?language=15"}, # Guessing based on filter pattern
            {"name": "Novels", "url": "https://medadbookshop.com/books/fiction/novels"},
            {"name": "Self Development", "url": "https://medadbookshop.com/books/nonfiction/selfhelp"},
            {"name": "Translated", "url": "https://medadbookshop.com/books/translated-books"},
            {"name": "Horror", "url": "https://medadbookshop.com/books/fiction/horror"},
            {"name": "Children", "url": "https://medadbookshop.com/books/fiction/kids"},
        ]

    def run(self):
        self.logger.info(f"Starting Medad Harvest (Cache-First). Limit: {self.limit_pages} pages per category.")
        
        for cat in self.categories:
            self.logger.info(f"=== Harvesting Category: {cat['name']} ===")
            for page in range(1, self.limit_pages + 1):
                # Magento 2 pagination: ?p=X
                url = f"{cat['url']}?p={page}"
                self.logger.info(f"Fetching page {page}: {url}")
                
                try:
                    response = self.client.get(url, headers={"User-Agent": self.user_agents[0]})
                    if response.status_code == 404:
                        break
                    response.raise_for_status()
                except Exception as e:
                    self.logger.error(f"Failed to fetch {url}: {e}")
                    break

                soup = BeautifulSoup(response.text, "html.parser")
                # Magento 2 class for product links
                links = soup.find_all('a', class_='product-item-link', href=True)
                if not links:
                    break

                for link in links:
                    try:
                        self._harvest_item(link['href'], cat['name'])
                    except Exception as e:
                        self.logger.error(f"Error harvesting item: {e}")
                
                time.sleep(1)
                
        self.logger.info(f"Finished. Harvested {self.items_scraped} items to cache.")

    def _harvest_item(self, url, category_label):
        # Unique ID from medadbookshop.com/9780452295315
        item_id = url.split("/")[-1].replace(".html", "")

        try:
            resp = self.client.get(url, headers={"User-Agent": self.user_agents[0]})
            if resp.status_code == 200:
                # CACHE FIRST: Dump raw HTML for AI batch processing
                self.cache_html(item_id, resp.text)
                
                # Save manifest
                item = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title="Cached Item",
                    listing_url=url,
                    category=category_label,
                    condition="Cached for AI extraction"
                )
                self.save_item(item)
        except Exception as e:
            self.logger.error(f"Error fetching/caching {url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    MedadSpider(limit_pages=args.limit).run()
