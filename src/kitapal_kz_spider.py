import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class KitapalKzSpider(BaseSpider):
    """
    HTML catalog spider for Kitapal (kitapal.kz) —
    one of Kazakhstan's leading online bookstores (Almaty / Astana, wide selection in KZT).
    Kazakhstan outbound M-Bag: RG5 low cost origin.
    """
    BASE_URL = "https://kitapal.kz"
    CATEGORIES = [
        "/catalog/47",
        "/catalog/30",
        "/catalog/48",
        "/catalog/20",
        "/catalog/21",
        "/catalog/22",
        "/catalog/23",
        "/catalog/24",
    ]

    def __init__(self, limit_pages: int = 15):
        super().__init__(platform_name="Kitapal Kazakhstan", territory="Kazakhstan")
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
        self.logger.info("Starting Kitapal Kazakhstan crawler.")
        seen_urls = set()

        for cat_path in self.CATEGORIES[:self.limit_pages]:
            cat_url = f"{self.BASE_URL}{cat_path}"
            self.logger.info(f"Fetching category: {cat_url}")
            try:
                resp = self.session.get(cat_url, timeout=20)
                if resp.status_code != 200:
                    self.logger.warning(f"Got status {resp.status_code} for {cat_url}")
                    continue

                soup = BeautifulSoup(resp.text, "html.parser")
                book_links = set()
                for a in soup.find_all("a", href=True):
                    href = a["href"]
                    if "/book/" in href and not href.endswith("/book/"):
                        if href.startswith("http"):
                            book_links.add(href)
                        else:
                            book_links.add(f"{self.BASE_URL}{href if href.startswith('/') else '/' + href}")

                for book_url in list(book_links)[:10]:
                    if book_url in seen_urls:
                        continue
                    seen_urls.add(book_url)

                    try:
                        b_resp = self.session.get(book_url, timeout=15)
                        if b_resp.status_code != 200:
                            continue

                        b_soup = BeautifulSoup(b_resp.text, "html.parser")
                        crumbs = b_soup.find("div", class_="crumbs__container")
                        title = None
                        if crumbs:
                            c_text = crumbs.get_text(strip=True)
                            parts = re.split(r"[•·\-\>\/]", c_text)
                            if len(parts) > 1:
                                title = parts[-1].strip()
                            else:
                                title = c_text

                        if not title:
                            h1 = b_soup.find(["h1", "h2"])
                            title = h1.get_text(strip=True) if h1 else None

                        if not title or "Кері" in title:
                            continue

                        # Extract price in KZT
                        page_text = b_soup.get_text()
                        price_str = None
                        price_match = re.search(r"(\d+(?:[ \t\xa0]\d+)*)\s*(?:₸|тг|KZT)", page_text)
                        if price_match:
                            raw_p = price_match.group(1).replace(" ", "").replace("\t", "").replace("\xa0", "").strip()
                            try:
                                val = float(raw_p)
                                if val > 0:
                                    price_str = str(val)
                            except ValueError:
                                pass

                        # Extract Author
                        author = None
                        author_match = re.search(r"Авторы:\s*([^\n\r<]+)", page_text)
                        if author_match:
                            author = author_match.group(1).strip()

                        # Extract ISBN
                        isbn = None
                        isbn_match = re.search(r"ISBN:\s*([0-9\-]+)", page_text)
                        if isbn_match:
                            isbn = isbn_match.group(1).strip()

                        item = BookListing(
                            territory=self.territory,
                            platform=self.platform_name,
                            title=title,
                            author=author,
                            isbn=isbn,
                            price=price_str,
                            price_currency="KZT",
                            listing_url=book_url,
                            condition="New",
                        )
                        self.save_item(item)

                    except Exception as ie:
                        self.logger.error(f"Error fetching book {book_url}: {ie}")

            except Exception as e:
                self.logger.error(f"Error fetching category {cat_url}: {e}")

        self.logger.info(f"Finished Kitapal Kazakhstan. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Kitapal Kazakhstan spider")
    parser.add_argument("--limit-pages", type=int, default=2)
    args = parser.parse_args()
    KitapalKzSpider(limit_pages=args.limit_pages).run()
