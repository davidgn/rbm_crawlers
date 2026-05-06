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
        self.logger.info(f"Starting Kitabain Crawler. Priority: English/All. Limit: {self.limit_pages} pages.")
        
        for cat in self.categories:
            self.logger.info(f"=== Crawling Category: {cat['name']} ===")
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
                        self._parse_item(item, cat['name'])
                    except Exception as e:
                        self.logger.error(f"Error parsing item: {e}")
                time.sleep(1)
                
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _parse_item(self, div, category_label):
        title_a = div.find("p").find("a") if div.find("p") else None
        if not title_a: return
            
        title = title_a.text.strip()
        listing_url = title_a.get("href")
        if listing_url and listing_url.startswith("/"):
            listing_url = "https://www.kitabain.com" + listing_url

        try:
            resp = self.client.get(listing_url)
            if resp.status_code == 200:
                soup = BeautifulSoup(resp.text, "html.parser")
                details = {}
                for li in soup.find_all("li"):
                    if ":" in li.text:
                        parts = li.text.split(":", 1)
                        details[parts[0].strip().lower()] = parts[1].strip()
                
                item = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    author=details.get("by"),
                    isbn=details.get("isbn") if details.get("isbn") != "-" else None,
                    condition=details.get("condition"),
                    pages=details.get("no of pages"),
                    binding="Paperback" if details.get("specification") == "pb" else ("Hardcover" if details.get("specification") == "hb" else details.get("specification")),
                    category=details.get("category", category_label),
                    price="PKR " + re.search(r"Rs\s*([\d,.]+)", details.get("price", "")).group(1).replace(",", "") if re.search(r"Rs\s*([\d,.]+)", details.get("price", "")) else None,
                    listing_url=listing_url,
                )
                self.save_item(item)
        except Exception as e:
            self.logger.error(f"Error fetching details for {listing_url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    KitabainSpider(limit_pages=args.limit).run()
