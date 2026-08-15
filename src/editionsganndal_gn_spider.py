import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class EditionsganndalGnSpider(BaseSpider):
    """
    HTML catalog spider for Éditions Ganndal (editionsganndal.com) —
    premier publishing house and bookstore in Conakry, Guinea (GNF).
    Guinea outbound M-Bag origin (45.00 / 30 kg).
    """
    BASE_URL = "https://editionsganndal.com"
    CATEGORIES = [
        "/catalogue",
        "/collection/hors-collection",
        "/collection/collection-miroir-d-encre",
        "/collection/collection-carnets-de-la-creation",
    ]

    def __init__(self, limit_pages: int = 10):
        super().__init__(platform_name="Editions Ganndal Guinea", territory="Guinea")
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
        self.logger.info("Starting Editions Ganndal Guinea crawler.")
        seen_urls = set()

        for cat_path in self.CATEGORIES[:self.limit_pages]:
            cat_url = f"{self.BASE_URL}{cat_path}" if cat_path.startswith("/") else cat_path
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
                    if "/books/" in href:
                        clean_href = href.split("?")[0]
                        if clean_href.startswith("http"):
                            book_links.add(clean_href)
                        else:
                            book_links.add(f"{self.BASE_URL}{clean_href if clean_href.startswith('/') else '/' + clean_href}")

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
                        title = h1.get_text(strip=True) if h1 else None
                        if not title:
                            continue

                        page_text = p_soup.get_text()

                        # Extract price in GNF / FG if present
                        price_str = None
                        price_match = re.search(r"(\d[\d\s.,]*)\s*(?:GNF|FG|FCFA|CFA)", page_text)
                        if price_match:
                            raw_p = price_match.group(1).replace(" ", "").replace(" ", "").replace(",", "").strip()
                            try:
                                val = float(raw_p)
                                if val > 0:
                                    price_str = str(val)
                            except ValueError:
                                pass

                        # Extract ISBN if present
                        isbn = None
                        isbn_match = re.search(r"97[89][0-9\-]{10,14}", page_text)
                        if isbn_match:
                            isbn = isbn_match.group(0).replace("-", "").strip()

                        item = BookListing(
                            territory=self.territory,
                            platform=self.platform_name,
                            title=title,
                            isbn=isbn,
                            price=price_str,
                            price_currency="GNF" if price_str else None,
                            listing_url=item_url,
                            condition="New",
                        )
                        self.save_item(item)

                    except Exception as ie:
                        self.logger.error(f"Error fetching item {item_url}: {ie}")

            except Exception as e:
                self.logger.error(f"Error fetching category {cat_url}: {e}")

        self.logger.info(f"Finished Editions Ganndal Guinea. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Editions Ganndal Guinea spider")
    parser.add_argument("--limit-pages", type=int, default=2)
    args = parser.parse_args()
    EditionsganndalGnSpider(limit_pages=args.limit_pages).run()
