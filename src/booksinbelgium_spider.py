"""
Books in Belgium spider — Belgium multilingual used-book marketplace (booksinbelgium.be).

Vue 3 SSR: page HTML contains window.__ctx__ JSON with server-rendered data.
Browse: /nl/boeken/{category}?page=N (48 records per page).
Categories discovered from /nl/boeken navigation.
~1.57M listings as of May 2026.
"""
import argparse
import json
import re
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import httpx
from models import BookListing
from base_spider import BaseSpider


QUALITY_MAP = {1: "Slecht", 2: "Matig", 3: "Goed", 4: "Zeer goed", 5: "Uitstekend"}

CATEGORY_FALLBACK = [
    "fictie", "non-fictie", "kinderboeken", "jeugdboeken",
    "thriller-detective-spanning", "geschiedenis", "biografie",
    "wetenschap-en-natuur", "informatica", "kunst-en-architectuur",
    "muziek-en-film", "sport-en-hobby", "reizen", "taal-en-schrijven",
    "schoolboeken", "studieboeken", "religie-en-spiritualiteit",
    "filosofie", "psychologie", "gezondheid", "kookboeken", "humor",
    "politiek-en-maatschappij", "economie-en-business", "recht",
]


class BooksInBelgiumSpider(BaseSpider):
    BASE_URL = "https://www.booksinbelgium.be"
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "nl-BE,nl;q=0.9,fr;q=0.8,en;q=0.7",
    }
    PAGE_SIZE = 48

    def __init__(self, max_pages_per_category: int = 5000):
        super().__init__(platform_name="BooksInBelgium", territory="Belgium")
        self.max_pages_per_category = max_pages_per_category
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        categories = self._discover_categories()
        self.logger.info("Found %d categories to harvest", len(categories))
        for slug in categories:
            self._harvest_category(slug)
        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _discover_categories(self) -> list[str]:
        try:
            resp = self.client.get(f"{self.BASE_URL}/nl/genres-boeken")
            resp.raise_for_status()
            soup = BeautifulSoup(resp.text, "html.parser")
            slugs: list[str] = []
            prefix = "/nl/boeken/"
            seen: set[str] = set()
            for a in soup.find_all("a", href=True):
                href = a["href"]
                if not href.startswith(prefix):
                    continue
                slug = href[len(prefix):].split("?")[0].strip("/")
                if slug and slug not in seen:
                    seen.add(slug)
                    slugs.append(slug)
            if slugs:
                self.logger.info("Discovered %d categories from navigation", len(slugs))
                return slugs
        except Exception as e:
            self.logger.warning("Category discovery failed: %s — using fallback list", e)
        return CATEGORY_FALLBACK

    def _harvest_category(self, slug: str):
        for page_num in range(1, self.max_pages_per_category + 1):
            url = f"{self.BASE_URL}/nl/boeken/{slug}?page={page_num}"
            try:
                resp = self.client.get(url)
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("Fetch error category=%s page=%d: %s", slug, page_num, e)
                break

            ctx = self._extract_ctx(resp.text)
            records: list = []
            try:
                records = ctx["data"]["searchResult"]["records"]
            except (KeyError, TypeError):
                pass

            if not records:
                if page_num == 1:
                    self.logger.debug("No records for category %s", slug)
                break

            for rec in records:
                listing = self._listing_from_record(rec)
                if listing:
                    self.save_item(listing)

            self.logger.info(
                "Category %-40s page %4d: %2d records  (total %d)",
                slug, page_num, len(records), self.items_scraped,
            )
            if len(records) < self.PAGE_SIZE:
                break

    def _extract_ctx(self, html: str) -> dict:
        soup = BeautifulSoup(html, "html.parser")
        for script in soup.find_all("script"):
            text = script.string or ""
            if "window.__ctx__" not in text:
                continue
            m = re.search(r"window\.__ctx__\s*=\s*(\{)", text)
            if not m:
                continue
            try:
                obj, _ = json.JSONDecoder().raw_decode(text, m.start(1))
                return obj
            except json.JSONDecodeError:
                pass
        return {}

    def _listing_from_record(self, rec: dict) -> BookListing | None:
        title = (rec.get("title") or "").strip()
        if not title:
            return None

        web_url = rec.get("webUrl") or ""
        if web_url.startswith("http"):
            listing_url = web_url
        elif web_url:
            listing_url = urljoin(self.BASE_URL, f"/nl/b/{web_url}")
        else:
            return None

        price_val = rec.get("price")
        price = f"{price_val} EUR" if price_val is not None else None

        quality_int = rec.get("quality")
        condition = QUALITY_MAP.get(int(quality_int)) if quality_int is not None else None

        isbn_raw = rec.get("isbn")
        isbn = str(isbn_raw) if isbn_raw else None

        pub_year = rec.get("publishYear")
        publication_year = str(pub_year) if pub_year else None

        seller_city = (rec.get("sellerCity") or "").strip() or None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=(rec.get("author") or "").strip() or None,
            isbn=isbn,
            publisher=(rec.get("publisher") or "").strip() or None,
            publication_year=publication_year,
            language=(rec.get("language") or "").strip() or None,
            binding=(rec.get("coverType") or rec.get("book_coverType") or "").strip() or None,
            condition=condition,
            price=price,
            listing_url=listing_url,
            seller_comments=seller_city,
        )


def main():
    parser = argparse.ArgumentParser(description="Books in Belgium Vue SSR spider")
    parser.add_argument(
        "--max-pages", type=int, default=5000,
        help="Max pages per category (48 records/page)",
    )
    args = parser.parse_args()
    BooksInBelgiumSpider(max_pages_per_category=args.max_pages).run()


if __name__ == "__main__":
    main()
