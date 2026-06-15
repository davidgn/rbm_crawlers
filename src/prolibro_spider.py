"""
Prolibro spider — Chile's used-book marketplace (prolibro.cl).

Livewire/Laravel SSR. Category pages at /search-products/{id}?page=N
serve 16 product cards per page via standard query string pagination.
47 categories discovered from the homepage navigation.

Tile fields: title, seller (as seller_id), category, price (CLP), URL.
Author and ISBN are not available in the SSR tile — the product detail
pages are Livewire-lazy and don't expose bibliographic fields in SSR HTML.
~3,000 listings as of May 2026.
"""
import argparse
import re
import time
from bs4 import BeautifulSoup
import httpx
from models import BookListing
from base_spider import BaseSpider


ITEMS_PER_PAGE = 16
BASE_URL = "https://www.prolibro.cl"

CATEGORY_FALLBACK = [
    (1, "Infantil y Juvenil"), (4, "Juvenil"), (5, "Juegos y Ocio"),
    (6, "Literatura"), (7, "Latinoamericana"), (8, "Contemporánea"),
    (9, "Novela"), (10, "Poesía"), (11, "Grandes Clásicos"),
    (12, "Arte"), (13, "Bellas Artes"), (14, "Diseño"),
    (15, "Arquitectura y Urbanismo"), (16, "Cine y Música"),
    (17, "Ciencias"), (18, "Ciencias de La Comunicación"),
    (19, "Ciencias de La Educación"), (20, "Ciencias Sociales"),
    (21, "Derecho"), (22, "Historia y Geografía"),
    (23, "Psicología"), (24, "Religión"),
    (25, "Ciencias Agrarias Y De La Naturaleza"), (26, "Ciencias Médicas"),
    (27, "Zoología y Animales Domésticos"), (28, "Ciencias Físicas y Elementales"),
    (29, "Ingeniería y Tecnología"), (30, "Comics"), (31, "Comics"),
    (32, "Ciencia Ficción"), (33, "Manga"), (34, "Otras Temáticas"),
    (35, "Ilustración"), (36, "Turismo y Viajes"), (37, "Economía y Negocios"),
    (38, "Autoayuda"), (39, "Gastronomía"), (40, "Fotografía"),
    (41, "Informática"), (42, "Diccionarios"), (43, "Entretención"),
    (44, "Deporte"), (45, "Hogar Jardín y Manualidades"), (46, "Otros"),
    (47, "Cuento"),
]


class ProlibroSpider(BaseSpider):
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "es-CL,es;q=0.9,en;q=0.8",
    }

    def __init__(self, delay: float = 0.4, max_pages: int = 500):
        super().__init__(platform_name="Prolibro", territory="Chile")
        self.delay = delay
        self.max_pages = max_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        categories = self._discover_categories()
        self.logger.info("Harvesting %d categories", len(categories))
        seen: set[str] = set()
        for cat_id, cat_name in categories:
            self._harvest_category(cat_id, cat_name, seen)
        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _discover_categories(self) -> list[tuple[int, str]]:
        try:
            resp = self.client.get(BASE_URL)
            resp.raise_for_status()
            soup = BeautifulSoup(resp.text, "html.parser")
            cats: list[tuple[int, str]] = []
            seen_ids: set[int] = set()
            for a in soup.find_all("a", href=True):
                m = re.search(r"/search-products/(\d+)", a["href"])
                if m:
                    cat_id = int(m.group(1))
                    if cat_id not in seen_ids:
                        seen_ids.add(cat_id)
                        cats.append((cat_id, a.get_text(strip=True)))
            if cats:
                self.logger.info("Discovered %d categories", len(cats))
                return cats
        except Exception as e:
            self.logger.warning("Category discovery failed: %s — using fallback", e)
        return CATEGORY_FALLBACK

    def _harvest_category(self, cat_id: int, cat_name: str, seen: set):
        for page_num in range(1, self.max_pages + 1):
            params = {} if page_num == 1 else {"page": page_num}
            url = f"{BASE_URL}/search-products/{cat_id}"
            try:
                resp = self.client.get(url, params=params)
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("cat=%d page=%d error: %s", cat_id, page_num, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            cards = soup.select(".product-card")
            if not cards:
                break

            new_count = 0
            for card in cards:
                link_el = card.select_one("a.card-img-top")
                if not link_el:
                    continue
                product_url = link_el.get("href", "")
                if not product_url or product_url in seen:
                    continue
                seen.add(product_url)
                new_count += 1

                listing = self._listing_from_card(card, product_url, cat_name)
                if listing:
                    self.save_item(listing)

            self.logger.info(
                "cat=%-30s page %3d: %2d new  (total %d)",
                cat_name[:30], page_num, new_count, self.items_scraped,
            )
            if len(cards) < ITEMS_PER_PAGE:
                break
            time.sleep(self.delay)

    def _listing_from_card(self, card, listing_url: str, category: str) -> BookListing | None:
        # First .product-title a → seller shop link
        # Second .product-title a → book title link
        title_links = card.select(".product-title a")
        if not title_links:
            return None

        seller_name = None
        title = None
        for link in title_links:
            href = link.get("href", "")
            if "/seller-shop/" in href:
                seller_name = link.get_text(strip=True) or None
            elif "/product/" in href:
                title = link.get_text(strip=True) or None

        if not title:
            # Fallback: last title link text
            title = title_links[-1].get_text(strip=True) or None
        if not title:
            return None

        price_el = card.select_one(".product-price .text-accent")
        price = price_el.get_text(strip=True) if price_el else None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            category=category,
            price=price,
            listing_url=listing_url,
            seller_id=seller_name,
        )


def main():
    parser = argparse.ArgumentParser(description="Prolibro Chile used-book spider")
    parser.add_argument("--delay", type=float, default=0.4)
    parser.add_argument("--max-pages", type=int, default=500)
    args = parser.parse_args()
    ProlibroSpider(delay=args.delay, max_pages=args.max_pages).run()


if __name__ == "__main__":
    main()
