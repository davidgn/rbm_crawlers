"""
Bëgg Lire spider — Senegal's used-book marketplace (begglire.com).

SSR site. Listings at /livres-en-ventes?page=N, 20 cards per page,
~13 pages (~260 listings as of May 2026). Each card links to a detail
page at /livres/{slug}/{author-slug}/{id} which has a table with ISBN,
author, publisher, year, category, and page count.
"""
import re
import time
from bs4 import BeautifulSoup
import httpx
from models import BookListing
from base_spider import BaseSpider


ITEMS_PER_PAGE = 20
BASE_URL = "https://begglire.com"
LIST_PATH = "/livres-en-ventes"


class BegglireSpider(BaseSpider):
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (X11; Linux x86_64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "fr-SN,fr;q=0.9,en;q=0.8",
    }

    def __init__(self, delay: float = 0.5, max_pages: int = 200):
        super().__init__(platform_name="Bëgg Lire", territory="Senegal")
        self.delay = delay
        self.max_pages = max_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        seen: set[str] = set()
        for page_num in range(1, self.max_pages + 1):
            url = f"{BASE_URL}{LIST_PATH}"
            try:
                resp = self.client.get(url, params={"page": page_num})
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("page=%d error: %s", page_num, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            cards = soup.select(".book__card.book__card-round")
            if not cards:
                break

            new_count = 0
            for card in cards:
                link_el = card.select_one(".book__card-image a")
                if not link_el:
                    continue
                detail_url = link_el.get("href", "").strip()
                if not detail_url or detail_url in seen:
                    continue
                seen.add(detail_url)
                new_count += 1

                tile_price = self._parse_tile_price(card)
                tile_condition = self._parse_tile_condition(card)
                listing = self._fetch_detail(detail_url, tile_price, tile_condition)
                if listing:
                    self.save_item(listing)
                time.sleep(self.delay)

            self.logger.info("page %3d: %2d new  (total %d)", page_num, new_count, self.items_scraped)
            if len(cards) < ITEMS_PER_PAGE:
                break

        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _parse_tile_price(self, card) -> str | None:
        el = card.select_one(".books-price_ventes")
        if not el:
            return None
        return re.sub(r"\s+", " ", el.get_text(strip=True)) or None

    def _parse_tile_condition(self, card) -> str | None:
        el = card.select_one(".etat_livre__span")
        return el.get_text(strip=True) or None if el else None

    def _fetch_detail(self, detail_url: str, price: str | None, condition: str | None) -> BookListing | None:
        try:
            resp = self.client.get(detail_url)
            resp.raise_for_status()
        except Exception as e:
            self.logger.warning("detail fetch failed %s: %s", detail_url, e)
            return None

        soup = BeautifulSoup(resp.text, "html.parser")

        h1_tags = soup.select("h1")
        title_el = h1_tags[1] if len(h1_tags) > 1 else (h1_tags[0] if h1_tags else None)
        title = title_el.get_text(strip=True) if title_el else None
        if not title:
            title_el = soup.select_one(".book-details__content-header-title")
            title = title_el.get_text(strip=True) if title_el else None
        if not title:
            return None

        fields: dict[str, str] = {}
        for row in soup.select("table tr"):
            th = row.select_one("th")
            td = row.select_one("td")
            if th and td:
                key = th.get_text(strip=True).rstrip(":").strip().lower()
                val = td.get_text(strip=True) or None
                if val:
                    fields[key] = val

        isbn_raw = fields.get("isbn", "")
        isbn = re.sub(r"[^0-9X]", "", isbn_raw.upper())[:13] if isbn_raw else None

        pub_year_str = None
        pub_year = fields.get("date de publication")
        if pub_year:
            m = re.search(r"(19|20)\d{2}", pub_year)
            if m:
                pub_year_str = m.group()

        pages_str = None
        pages_raw = fields.get("nombre de pages")
        if pages_raw:
            m = re.search(r"\d+", pages_raw)
            if m:
                pages_str = m.group()

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=fields.get("auteur"),
            isbn=isbn or None,
            publisher=fields.get("editeur"),
            publication_year=pub_year_str,
            pages=pages_str,
            category=fields.get("catégorie"),
            condition=condition,
            price=price,
            listing_url=detail_url,
        )


def main():
    import argparse
    parser = argparse.ArgumentParser(description="Bëgg Lire Senegal used-book spider")
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--max-pages", type=int, default=200)
    args = parser.parse_args()
    BegglireSpider(delay=args.delay, max_pages=args.max_pages).run()


if __name__ == "__main__":
    main()
