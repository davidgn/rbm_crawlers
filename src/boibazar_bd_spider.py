import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class BoibazarBdSpider(BaseSpider):
    """
    HTML catalog spider for BoiBazar (boibazar.com) —
    one of Bangladesh's premier online bookstores (over 100,000 titles in BDT).
    Bangladesh outbound M-Bag: RG5 low cost origin.
    """
    BASE_URL = "https://www.boibazar.com"
    CATEGORIES = [
        "/",
        "/publisher",
    ]

    def __init__(self, limit_pages: int = 15):
        super().__init__(platform_name="BoiBazar Bangladesh", territory="Bangladesh")
        self.limit_pages = limit_pages
        self.session = requests.Session()
        self.session.headers.update({
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        })

    def _convert_bengali_digits(self, text: str) -> str:
        bengali_to_ascii = str.maketrans("০১২৩৪৫৬৭৮৯", "0123456789")
        return text.translate(bengali_to_ascii)

    def run(self):
        self.logger.info("Starting BoiBazar Bangladesh crawler.")
        seen_urls = set()

        for cat_path in self.CATEGORIES[:self.limit_pages]:
            cat_url = f"{self.BASE_URL}{cat_path}" if cat_path.startswith('/') else cat_path
            self.logger.info(f"Fetching page: {cat_url}")
            try:
                resp = self.session.get(cat_url, timeout=20)
                if resp.status_code != 200:
                    self.logger.warning(f"Got status {resp.status_code} for {cat_url}")
                    continue

                soup = BeautifulSoup(resp.text, "html.parser")
                book_links = set()
                publisher_links = set()

                for a in soup.find_all("a", href=True):
                    href = a["href"]
                    if "/book/" in href and not href.endswith("/book/"):
                        if href.startswith("http"):
                            book_links.add(href)
                        else:
                            book_links.add(f"{self.BASE_URL}{href if href.startswith('/') else '/' + href}")
                    elif "/publisher/" in href and not href.endswith("/publisher/"):
                        if href.startswith("http"):
                            publisher_links.add(href)
                        else:
                            publisher_links.add(f"{self.BASE_URL}{href if href.startswith('/') else '/' + href}")

                # Also crawl sub-publishers to discover more books
                for pub_url in list(publisher_links)[:5]:
                    try:
                        p_resp = self.session.get(pub_url, timeout=15)
                        if p_resp.status_code == 200:
                            p_soup = BeautifulSoup(p_resp.text, "html.parser")
                            for a in p_soup.find_all("a", href=True):
                                href = a["href"]
                                if "/book/" in href and not href.endswith("/book/"):
                                    if href.startswith("http"):
                                        book_links.add(href)
                                    else:
                                        book_links.add(f"{self.BASE_URL}{href if href.startswith('/') else '/' + href}")
                    except Exception:
                        pass

                for book_url in list(book_links)[:20]:
                    if book_url in seen_urls:
                        continue
                    seen_urls.add(book_url)

                    try:
                        b_resp = self.session.get(book_url, timeout=15)
                        if b_resp.status_code != 200:
                            continue

                        b_soup = BeautifulSoup(b_resp.text, "html.parser")
                        h1 = b_soup.find("h1")
                        title = h1.get_text(strip=True) if h1 else None
                        if not title:
                            continue

                        # Extract price (looking for ৳ or Tk or price container)
                        price_str = None
                        page_text = b_soup.get_text()
                        price_match = re.search(r"বইবাজার মূল্য\s*:\s*৳?\s*([০-৯0-9]+)", page_text)
                        if price_match:
                            raw_p = self._convert_bengali_digits(price_match.group(1))
                            try:
                                val = float(raw_p)
                                if val > 0:
                                    price_str = str(val)
                            except ValueError:
                                pass

                        if not price_str:
                            gen_match = re.search(r"৳\s*([০-৯0-9]+)", page_text)
                            if gen_match:
                                raw_p = self._convert_bengali_digits(gen_match.group(1))
                                try:
                                    val = float(raw_p)
                                    if val > 0:
                                        price_str = str(val)
                                except ValueError:
                                    pass

                        # Extract Author & ISBN
                        author = None
                        isbn = None
                        isbn_match = re.search(r"ISBN\s*:\s*([0-9\-]+)", page_text)
                        if isbn_match:
                            isbn = isbn_match.group(1)

                        author_match = re.search(r"Author\s*:\s*([^\n\r<]+)", page_text)
                        if author_match:
                            author = author_match.group(1).strip()

                        item = BookListing(
                            territory=self.territory,
                            platform=self.platform_name,
                            title=title,
                            author=author,
                            isbn=isbn,
                            price=price_str,
                            price_currency="BDT",
                            listing_url=book_url,
                            condition="New",
                        )
                        self.save_item(item)

                    except Exception as ie:
                        self.logger.error(f"Error fetching book {book_url}: {ie}")

            except Exception as e:
                self.logger.error(f"Error fetching category {cat_url}: {e}")

        self.logger.info(f"Finished BoiBazar Bangladesh. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="BoiBazar Bangladesh spider")
    parser.add_argument("--limit-pages", type=int, default=2)
    args = parser.parse_args()
    BoibazarBdSpider(limit_pages=args.limit_pages).run()
