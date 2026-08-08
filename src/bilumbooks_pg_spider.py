import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class BilumbooksPgSpider(BaseSpider):
    """
    HTML catalog spider for Bilum Books (bilumbooks.com) —
    Papua New Guinea's primary publisher and distributor for primary, secondary, and literacy education.
    Papua New Guinea outbound M-Bag: RG5 low cost origin.
    """
    BASE_URL = "https://bilumbooks.com"
    CATALOG_PAGES = [
        "secondary-grades-7-12/",
        "past-exam-questions/",
        "master-your-english-skills/",
        "primary-grades-1-6/",
        "early-childhood-elementary/",
        "spelling-and-word-study/",
        "phonics/",
        "picture-dictionary/",
    ]

    def __init__(self, limit_pages: int = 15):
        super().__init__(platform_name="Bilum Books", territory="Papua New Guinea")
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
        self.logger.info(f"Starting Bilum Books Papua New Guinea crawler. Limit: {self.limit_pages} pages.")
        
        seen_titles = set()

        for page in self.CATALOG_PAGES[:self.limit_pages]:
            page_url = f"{self.BASE_URL}/{page}"
            self.logger.info(f"Fetching page {page}: {page_url}")
            try:
                resp = self.session.get(page_url, timeout=20)
                if resp.status_code != 200:
                    self.logger.warning(f"Got status {resp.status_code} for {page_url}")
                    continue

                soup = BeautifulSoup(resp.text, "html.parser")
                headers = soup.find_all(["h1", "h2", "h3", "h4", "h5", "strong"])

                for h in headers:
                    title = h.get_text(strip=True)
                    if not title or len(title) < 5 or len(title) > 150:
                        continue

                    # Filter navigation/generic titles
                    if any(w in title.lower() for w in ["home", "contact", "about us", "who we are", "navigation", "testimonials", "menu"]):
                        continue

                    if title in seen_titles:
                        continue
                    seen_titles.add(title)

                    # Build unique listing URL fragment
                    slug = title.lower().replace(" ", "-")[:40]
                    listing_url = f"{page_url}#{slug}"

                    item = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        price_currency="PGK",
                        listing_url=listing_url,
                        condition="New",
                    )
                    self.save_item(item)

            except Exception as e:
                self.logger.error(f"Error fetching page {page}: {e}")

        self.logger.info(f"Finished Bilum Books. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Bilum Books Papua New Guinea bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=10)
    args = parser.parse_args()
    BilumbooksPgSpider(limit_pages=args.limit_pages).run()
