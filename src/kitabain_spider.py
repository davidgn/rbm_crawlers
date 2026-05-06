import argparse
import httpx
from bs4 import BeautifulSoup
import time
import re
from models import BookListing
from base_spider import BaseSpider

class KitabainSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Kitabain", territory="Pakistan")
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)
        # English is dominant: Focus on English/All first
        self.categories = [
            {"name": "All Books", "url": "https://www.kitabain.com/books/all"},
            {"name": "English Literature", "url": "https://www.kitabain.com/books/english-literature"},
            {"name": "Urdu Books", "url": "https://www.kitabain.com/books/Urdu-Books"},
            {"name": "Other Language", "url": "https://www.kitabain.com/books/Other-Language"}
        ]

    def run(self):
        self.logger.info(f"Starting Kitabain Harvest (Cache-First). Priority: English/All. Limit: {self.limit_pages} pages.")
        
        for cat in self.categories:
            self.logger.info(f"=== Harvesting Category: {cat['name']} ===")
            for page in range(1, self.limit_pages + 1):
                url = f"{cat['url']}?page={page}"
                try:
                    response = self.client.get(url)
                    if response.status_code == 500: continue
                    response.raise_for_status()
                except Exception as e:
                    self.logger.error(f"Failed to fetch {url}: {e}")
                    break

                soup = BeautifulSoup(response.text, "html.parser")
                items = soup.find_all("div", class_="bookimgdiv")
                if not items: break

                for item in items:
                    try:
                        self._harvest_item(item, cat['name'])
                    except Exception as e:
                        self.logger.error(f"Error harvesting item: {e}")
                
                time.sleep(1) # Politeness between category pages
                
        self.logger.info(f"Finished. Harvested {self.items_scraped} items to cache.")

    def _harvest_item(self, div, category_label):
        title_a = div.find("p").find("a") if div.find("p") else None
        if not title_a: return
            
        title = title_a.text.strip()
        listing_url = title_a.get("href")
        if listing_url and listing_url.startswith("/"):
            listing_url = "https://www.kitabain.com" + listing_url

        # Extract a unique ID from the URL (e.g., ...-221715)
        item_id = listing_url.split("-")[-1] if "-" in listing_url else str(time.time())

        try:
            resp = self.client.get(listing_url)
            if resp.status_code == 200:
                # CACHE FIRST: Dump raw HTML for AI batch processing
                self.cache_html(item_id, resp.text)
                
                # Save a minimal manifest record
                item = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    listing_url=listing_url,
                    category=category_label,
                    condition="Cached for AI extraction"
                )
                self.save_item(item)
        except Exception as e:
            self.logger.error(f"Error fetching/caching {listing_url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = KitabainSpider(limit_pages=args.limit)
    spider.run()
