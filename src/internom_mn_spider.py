import json
import urllib.parse
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class InternomMnSpider(BaseSpider):
    """
    Next.js catalog spider for Internom (internom.mn) —
    Mongolia's largest and leading online bookstore in Ulaanbaatar.
    Mongolia outbound M-Bag rate: RG5 low cost origin.
    """
    BASE_URL = "https://internom.mn"

    def __init__(self, limit_pages: int = 20):
        super().__init__(platform_name="Internom", territory="Mongolia")
        self.limit_pages = limit_pages
        self.session = requests.Session()
        self.session.headers.update({
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        })

    def run(self):
        self.logger.info("Starting Internom Mongolia bookstore crawler.")
        
        seen_ids = set()

        try:
            resp = self.session.get(self.BASE_URL, timeout=20)
            if resp.status_code != 200:
                self.logger.error(f"Failed to fetch homepage: status {resp.status_code}")
                return

            soup = BeautifulSoup(resp.text, "html.parser")
            script = soup.find("script", id="__NEXT_DATA__")
            if not script or not script.string:
                self.logger.error("Could not find __NEXT_DATA__ script on homepage")
                return

            data = json.loads(script.string)
            collections = data.get("props", {}).get("pageProps", {}).get("collections", [])

            for col in collections[:self.limit_pages]:
                items = col.get("childItems", {}).get("items", [])
                for it in items:
                    pid = it.get("productId") or it.get("id")
                    title = it.get("title")
                    author = it.get("author")
                    price_val = it.get("price")

                    if not pid or not title or not price_val:
                        continue

                    if pid in seen_ids:
                        continue
                    seen_ids.add(pid)

                    # Build canonical listing URL
                    slug = it.get("slug")
                    if slug:
                        encoded_slug = urllib.parse.quote(slug)
                        encoded_prefix = urllib.parse.quote("бараа")
                        listing_url = f"{self.BASE_URL}/{encoded_prefix}/{encoded_slug}"
                    else:
                        encoded_prefix = urllib.parse.quote("бараа/id")
                        listing_url = f"{self.BASE_URL}/{encoded_prefix}/{pid}"

                    item = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        author=author,
                        price=str(price_val),
                        price_currency="MNT",
                        listing_url=listing_url,
                        condition="New",
                    )
                    self.save_item(item)

        except Exception as e:
            self.logger.error(f"Error executing Internom crawler: {e}")

        self.logger.info(f"Finished Internom Mongolia. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Internom Mongolia bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=20)
    args = parser.parse_args()
    InternomMnSpider(limit_pages=args.limit_pages).run()
