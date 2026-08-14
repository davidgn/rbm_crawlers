import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class OmniLiSpider(BaseSpider):
    """
    HTML catalog spider for Omni (omni.li / lesen.omni.li) —
    prominent bookstore in Schaan and Eschen, Liechtenstein (prices in CHF).
    Liechtenstein outbound M-Bag: Swiss Post low cost origin.
    """
    BASE_URL = "https://www.omni.li"
    CATEGORIES = [
        "https://www.omni.li/buchtipps",
        "https://lesen.omni.li",
    ]

    def __init__(self, limit_pages: int = 10):
        super().__init__(platform_name="Omni Liechtenstein", territory="Liechtenstein")
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
        self.logger.info("Starting Omni Liechtenstein crawler.")
        seen_urls = set()

        for cat_url in self.CATEGORIES[:self.limit_pages]:
            self.logger.info(f"Fetching category: {cat_url}")
            try:
                resp = self.session.get(cat_url, timeout=20)
                if resp.status_code != 200:
                    self.logger.warning(f"Got status {resp.status_code} for {cat_url}")
                    continue

                soup = BeautifulSoup(resp.text, "html.parser")
                book_links = set()
                for a in soup.find_all("a", href=True):
                    href = a["href"].strip()
                    if "lesen.omni.li" in href and "isbn-" in href.lower():
                        book_links.add(href)

                for item_url in list(book_links)[:10]:
                    if item_url in seen_urls:
                        continue
                    seen_urls.add(item_url)

                    try:
                        p_resp = self.session.get(item_url, timeout=15)
                        if p_resp.status_code != 200:
                            continue

                        p_soup = BeautifulSoup(p_resp.text, "html.parser")
                        h1 = p_soup.find(["h1", "h2"])
                        raw_title = h1.get_text(strip=True) if h1 else None
                        if not raw_title:
                            continue

                        title = raw_title
                        author = None
                        if ":" in raw_title:
                            parts = raw_title.split(":", 1)
                            author = parts[0].strip()
                            title = parts[1].strip()

                        page_text = p_soup.get_text()

                        # Extract price in CHF
                        price_str = None
                        price_match = re.search(r"(?:CHF|Fr\.)\s*(\d+(?:\.\d{2})?)", page_text)
                        if not price_match:
                            price_match = re.search(r"(\d+(?:\.\d{2})?)\s*(?:CHF|Fr\.)", page_text)
                        if price_match:
                            try:
                                val = float(price_match.group(1))
                                if val > 0:
                                    price_str = str(val)
                            except ValueError:
                                pass

                        # Extract ISBN
                        isbn = None
                        isbn_match = re.search(r"97[89][0-9\-]{10,14}", page_text)
                        if isbn_match:
                            isbn = isbn_match.group(0).replace("-", "").strip()

                        item = BookListing(
                            territory=self.territory,
                            platform=self.platform_name,
                            title=title,
                            author=author,
                            isbn=isbn,
                            price=price_str,
                            price_currency="CHF",
                            listing_url=item_url,
                            condition="New",
                        )
                        self.save_item(item)

                    except Exception as ie:
                        self.logger.error(f"Error fetching item {item_url}: {ie}")

            except Exception as e:
                self.logger.error(f"Error fetching category {cat_url}: {e}")

        self.logger.info(f"Finished Omni Liechtenstein. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Omni Liechtenstein spider")
    parser.add_argument("--limit-pages", type=int, default=2)
    args = parser.parse_args()
    OmniLiSpider(limit_pages=args.limit_pages).run()
