import re
import requests
from base_spider import BaseSpider
from models import BookListing

class SombaBukuCgSpider(BaseSpider):
    """
    Next.js RSC payload spider for Somba Buku (sombabuku.com) —
    the premiere online bookstore for Republic of the Congo / Central Africa.
    Congo outbound M-Bag: $137.39 USD / 30 kg to US.
    """
    BASE_URL = "https://www.sombabuku.com"

    def __init__(self, limit_pages: int = 5):
        super().__init__(platform_name="Somba Buku", territory="Congo")
        self.limit_pages = limit_pages
        self.headers = {
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        }

    def run(self):
        self.logger.info(f"Starting Somba Buku Congo crawler.")
        
        urls = [
            f"{self.BASE_URL}/",
            f"{self.BASE_URL}/livres",
        ]

        seen_ids = set()

        for url in urls:
            try:
                self.logger.info(f"Fetching {url}")
                resp = requests.get(url, headers=self.headers, timeout=20)
                if resp.status_code != 200:
                    continue

                # Parse JSON embedded in React Server Components payload
                matches = re.findall(
                    r'\\\"id\\\":\\\"([a-zA-Z0-9_-]+)\\\",\\\"title\\\":\\\"(.*?)\\\",\\\"author\\\":\\\"(.*?)\\\",\\\"price\\\":([0-9\.]+)',
                    resp.text
                )

                for book_id, title, author, price in matches:
                    if book_id in seen_ids:
                        continue
                    seen_ids.add(book_id)

                    title = title.strip()
                    author = author.strip() if author else None

                    if not title or title.lower().startswith("nous avons"):
                        continue

                    item = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        author=author,
                        price=price,
                        price_currency="USD",
                        listing_url=f"{self.BASE_URL}/livre/{book_id}",
                        condition="New",
                    )
                    self.save_item(item)

            except Exception as e:
                self.logger.error(f"Error fetching {url}: {e}")

        self.logger.info(f"Finished Somba Buku. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Somba Buku Congo bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    SombaBukuCgSpider(limit_pages=args.limit_pages).run()
