"""
Buchfreund spider — Germany's large used-book marketplace (buchfreund.de).

Vue SPA but category listing pages are SSR-rendered.
Browse: /de/kategorien/{slug}/{page_num} — 10 listings per page.
Categories discovered from any category page's sidebar (76 categories).
Last page number is in the pagination nav (links to page 1000, etc).
~1.4M listings as of May 2026.

Fields per card: ISBN (from href), title, author, publisher, price (EUR),
seller_comments (condition/edition note from p.mb-1).
"""
import argparse
import re
import time
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import httpx
from models import BookListing
from base_spider import BaseSpider


ITEMS_PER_PAGE = 10

CATEGORY_FALLBACK = [
    "belletristik-romane", "biographien-memoiren", "comics", "computer-edv",
    "esoterik", "filme", "fremdsprachige-buecher", "geschichte",
    "ingenieurwissenschaft-technik", "kinder-jugendliteratur",
    "kochen-essen-trinken", "kulturwissenschaften", "kunst-fotografie",
    "medizin", "musik-noten", "nachschlagewerke-lexika", "naturwissenschaften",
    "philosophie", "politik", "raritaeten-sammlerstuecke", "reisen-laender",
    "religion", "sachbuecher-ratgeber", "schule-studium", "sozialwissenschaft",
    "wirtschaft", "zeitschriften-periodika", "anthologien", "bestseller",
    "detektiv-romane", "dramen", "englische-romane", "erotik", "erzaehlungen",
    "essays", "familienromane", "fantasy", "gedichte-lyrik", "geschichte",
    "historische-romane", "horror", "humor-satire", "klassiker",
    "kriminalromane", "kurzgeschichten", "liebesromane", "novellen",
    "politische-romane", "reportagen", "science-fiction", "taschenbuecher",
    "unterhaltungsliteratur", "western-abenteuer", "zeitgenoessische-literatur",
]


class BuchfreundSpider(BaseSpider):
    BASE_URL = "https://www.buchfreund.de"
    SEED_CATEGORY = "/de/kategorien/belletristik-romane"
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "de-DE,de;q=0.9,en;q=0.8",
    }

    def __init__(self, delay: float = 0.4, max_pages: int = 2000):
        super().__init__(platform_name="Buchfreund", territory="Germany")
        self.delay = delay
        self.max_pages = max_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        categories = self._discover_categories()
        self.logger.info("Harvesting %d categories", len(categories))
        seen: set[str] = set()
        for slug in categories:
            self._harvest_category(slug, seen)
        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _discover_categories(self) -> list[str]:
        try:
            resp = self.client.get(urljoin(self.BASE_URL, self.SEED_CATEGORY))
            resp.raise_for_status()
            soup = BeautifulSoup(resp.text, "html.parser")
            slugs: list[str] = []
            seen: set[str] = set()
            for a in soup.find_all("a", href=True):
                m = re.match(r"^/de/kategorien/([a-z][a-z0-9-]+)$", a["href"])
                if m:
                    slug = m.group(1)
                    if slug not in seen:
                        seen.add(slug)
                        slugs.append(slug)
            if slugs:
                self.logger.info("Discovered %d categories", len(slugs))
                return slugs
        except Exception as e:
            self.logger.warning("Category discovery failed: %s — using fallback", e)
        return CATEGORY_FALLBACK

    def _harvest_category(self, slug: str, seen: set):
        for page_num in range(1, self.max_pages + 1):
            url = (
                f"{self.BASE_URL}/de/kategorien/{slug}"
                if page_num == 1
                else f"{self.BASE_URL}/de/kategorien/{slug}/{page_num}"
            )
            try:
                resp = self.client.get(url)
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("Fetch error %s page %d: %s", slug, page_num, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            cards = soup.select(".product-card")
            if not cards:
                if page_num == 1:
                    self.logger.debug("No cards in category %s", slug)
                break

            new_count = 0
            for card in cards:
                link_el = card.select_one(".book-title a")
                if not link_el:
                    continue
                href = link_el.get("href", "")
                listing_url = href if href.startswith("http") else urljoin(self.BASE_URL, href)
                # Dedup by bookId (stable across categories)
                book_id_m = re.search(r"bookId=(\d+)", href)
                dedup_key = book_id_m.group(1) if book_id_m else listing_url
                if dedup_key in seen:
                    continue
                seen.add(dedup_key)
                new_count += 1

                listing = self._listing_from_card(card, listing_url)
                if listing:
                    self.save_item(listing)

            self.logger.info(
                "Category %-40s page %4d: %2d new  (total %d)",
                slug, page_num, new_count, self.items_scraped,
            )
            if len(cards) < ITEMS_PER_PAGE:
                break
            time.sleep(self.delay)

    def _listing_from_card(self, card, listing_url: str) -> BookListing | None:
        link_el = card.select_one(".book-title a")
        title = link_el.get_text(strip=True) if link_el else None
        if not title:
            return None

        href = link_el.get("href", "")
        isbn_m = re.search(r"/de/d/e/(\d{10,13})/", href)
        isbn = isbn_m.group(1) if isbn_m else None

        pt = card.select_one(".product-title")
        author = None
        publisher = None
        if pt:
            pt_text = pt.get_text(" ", strip=True)
            author_m = re.match(r"von\s+(.+?)\s+Verlag:", pt_text)
            pub_m = re.search(r"Verlag:\s*(.+?)(?:,\s*$|$)", pt_text)
            if author_m:
                author = author_m.group(1).strip() or None
            if pub_m:
                publisher = pub_m.group(1).strip().rstrip(",").strip() or None

        price_el = card.select_one("[class*='price']")
        price = price_el.get_text(strip=True) if price_el else None

        note_el = card.select_one("p.mb-1")
        seller_comments = note_el.get_text(strip=True)[:400] if note_el else None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            price=price,
            listing_url=listing_url,
            seller_comments=seller_comments,
        )


def main():
    parser = argparse.ArgumentParser(description="Buchfreund Germany used-book spider")
    parser.add_argument("--delay", type=float, default=0.4)
    parser.add_argument("--max-pages", type=int, default=2000,
                        help="Max pages per category (10 listings/page)")
    args = parser.parse_args()
    BuchfreundSpider(delay=args.delay, max_pages=args.max_pages).run()


if __name__ == "__main__":
    main()
