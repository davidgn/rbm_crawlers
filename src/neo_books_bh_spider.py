import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class NeoBooksBhSpider(BaseSpider):
    """
    nopCommerce-based catalog spider for Neo Books & Coffee (neobooksandcoffee.com) —
    leading bookstore and cafe chain in Manama, Bahrain.
    Bahrain outbound M-Bag: $13.25 USD / 30 kg to US.
    """
    BASE_URL = "https://neobooksandcoffee.com"
    CATEGORIES = [
        "fiction",
        "non-fiction",
        "arabic-books",
        "childrens",
        "history-politics",
        "graphic-novels",
        "science-fiction-fantasy",
        "biography-true-stories",
        "art-design",
        "classics-poetry",
    ]

    def __init__(self, limit_pages: int = 20):
        super().__init__(platform_name="Neo Books & Coffee", territory="Bahrain")
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
        self.logger.info(f"Starting Neo Books & Coffee Bahrain crawler. Limit: {self.limit_pages} categories/pages.")
        
        seen_urls = set()

        for cat in self.CATEGORIES[:self.limit_pages]:
            cat_url = f"{self.BASE_URL}/en/{cat}"
            self.logger.info(f"Fetching category {cat}: {cat_url}")
            try:
                resp = self.session.get(cat_url, timeout=20)
                if resp.status_code != 200:
                    self.logger.warning(f"Got status {resp.status_code} for {cat_url}")
                    continue

                soup = BeautifulSoup(resp.text, "html.parser")
                products = soup.select(".product-item, .item-box")

                for p in products:
                    title_el = p.select_one(".product-title a, h2.product-title a")
                    if not title_el:
                        continue

                    title = title_el.get_text(strip=True)
                    href = title_el.get("href", "")
                    if not href:
                        continue

                    full_url = f"{self.BASE_URL}{href}" if href.startswith("/") else href
                    if full_url in seen_urls:
                        continue
                    seen_urls.add(full_url)

                    # Extract price
                    price_val = None
                    price_el = p.select_one(".actual-price, .price")
                    if price_el:
                        price_text = price_el.get_text(strip=True)
                        match = re.search(r"(\d+[\.\,]\d+)", price_text)
                        if match:
                            price_val = match.group(1).replace(",", ".")

                    # Extract ISBN if trailing digits exist in URL slug
                    isbn = None
                    isbn_match = re.search(r"_(\d{10,13})$", href)
                    if isbn_match:
                        isbn = isbn_match.group(1)

                    item = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        isbn=isbn,
                        price=price_val,
                        price_currency="BHD",
                        listing_url=full_url,
                        condition="New",
                    )
                    self.save_item(item)

            except Exception as e:
                self.logger.error(f"Error fetching category {cat}: {e}")

        self.logger.info(f"Finished Neo Books & Coffee. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Neo Books & Coffee Bahrain bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=10)
    args = parser.parse_args()
    NeoBooksBhSpider(limit_pages=args.limit_pages).run()
