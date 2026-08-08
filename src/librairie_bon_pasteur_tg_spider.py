import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class LibrairieBonPasteurTgSpider(BaseSpider):
    """
    HTML Search/Catalog spider for Librairie Bon Pasteur (Lomé, Togo).
    Founded in 1906, it is Togo's premier and oldest bookstore chain.
    Togo outbound M-Bag: $79.78 USD / 30 kg to US.
    """
    BASE_URL = "https://librairiebonpasteur.tg"

    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="Librairie Bon Pasteur", territory="Togo")
        self.limit_pages = limit_pages
        self.session = requests.Session()
        self.session.headers.update({
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            "Accept-Language": "fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7",
        })

    def run(self):
        self.logger.info(f"Starting Librairie Bon Pasteur Togo crawler. Limit: {self.limit_pages} pages.")
        
        seen_book_urls = set()

        for page in range(1, self.limit_pages + 1):
            page_url = f"{self.BASE_URL}/boutique?page={page}"
            self.logger.info(f"Fetching catalog page {page}: {page_url}")
            try:
                resp = self.session.get(page_url, timeout=20)
                if resp.status_code != 200:
                    self.logger.warning(f"Got status {resp.status_code} for page {page}. Stopping.")
                    break

                soup = BeautifulSoup(resp.text, "html.parser")
                book_links = soup.select("a[href*='/livre/']")
                if not book_links:
                    self.logger.info(f"No book links found on page {page}. Stopping.")
                    break

                page_new_urls = []
                for a in book_links:
                    href = a.get("href", "")
                    full_url = f"{self.BASE_URL}{href}" if href.startswith("/") else href
                    if "/livre/" in full_url and full_url not in seen_book_urls:
                        seen_book_urls.add(full_url)
                        page_new_urls.append(full_url)

                if not page_new_urls:
                    self.logger.info(f"No new book links on page {page}. Stopping.")
                    break

                for book_url in page_new_urls:
                    try:
                        self._parse_book_page(book_url)
                    except Exception as e:
                        self.logger.warning(f"Failed to parse {book_url}: {e}")

            except Exception as e:
                self.logger.error(f"Error fetching page {page}: {e}")
                break

        self.logger.info(f"Finished Librairie Bon Pasteur. Scraped {self.items_scraped} items.")

    def _parse_book_page(self, book_url: str):
        resp = self.session.get(book_url, timeout=15)
        if resp.status_code != 200:
            return

        soup = BeautifulSoup(resp.text, "html.parser")

        # Extract title
        title_el = soup.select_one("h1.text-4xl, h1.primary-text, h1")
        if not title_el:
            return
        title = title_el.get_text(strip=True)

        if not title or title.lower() in ["détail", "bonpasteur"]:
            return

        # Extract price
        price_val = None
        price_el = soup.select_one("span.text-3xl, .primary-text span, span.font-bold")
        if price_el:
            price_text = price_el.get_text(strip=True)
            match = re.search(r"(\d[\d\s\.]*)", price_text)
            if match:
                price_val = match.group(1).replace(" ", "").replace(".", "")

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=price_val,
            price_currency="XOF",
            listing_url=book_url,
            condition="New",
        )
        self.save_item(item)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Librairie Bon Pasteur Togo bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LibrairieBonPasteurTgSpider(limit_pages=args.limit_pages).run()
