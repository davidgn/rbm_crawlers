"""
TrhKnih spider — Czechia's largest used-book marketplace (trhknih.cz).

Browse: /nabidky?page=N (30 listings per page, ~14,300 pages).
Listing tile: div.bookitem.span2 — title, subtitle, cheapest-offer price.
Book detail page: /kniha/{id} — language, year, publisher, ISBN, dimensions.
~428K active offers as of May 2026.
"""
import argparse
import re
import time
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import httpx
from models import BookListing
from base_spider import BaseSpider


class TrhKnihSpider(BaseSpider):
    BASE_URL = "https://www.trhknih.cz"
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "cs-CZ,cs;q=0.9,sk;q=0.8,en;q=0.7",
    }
    ITEMS_PER_PAGE = 30

    def __init__(
        self,
        delay: float = 0.4,
        max_pages: int = 20000,
        fetch_detail: bool = True,
    ):
        super().__init__(platform_name="TrhKnih", territory="Czechia")
        self.delay = delay
        self.max_pages = max_pages
        self.fetch_detail = fetch_detail
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        seen: set[str] = set()
        for page_num in range(1, self.max_pages + 1):
            url = f"{self.BASE_URL}/nabidky?page={page_num}"
            try:
                resp = self.client.get(url)
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("Page %d fetch failed: %s", page_num, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            tiles = soup.select("div.bookitem")
            if not tiles:
                self.logger.info("No tiles on page %d — done", page_num)
                break

            new_count = 0
            for tile in tiles:
                link_el = tile.select_one("a.title-name")
                if not link_el:
                    continue
                book_url = urljoin(self.BASE_URL, link_el.get("href", ""))
                if not book_url or book_url in seen:
                    continue
                seen.add(book_url)
                new_count += 1

                # Extract data from tile
                title_parts = []
                for part in link_el.children:
                    if isinstance(part, str):
                        t = part.strip()
                        if t:
                            title_parts.append(t)
                    elif hasattr(part, "get_text") and "subtitle" in part.get("class", []):
                        sub = part.get_text(strip=True)
                        if sub:
                            title_parts.append(sub)
                title = " ".join(title_parts) or link_el.get_text(strip=True)
                if not title:
                    continue

                price_el = tile.select_one("span.ask-count")
                price = price_el.get_text(strip=True) if price_el else None

                if self.fetch_detail:
                    listing = self._fetch_detail(book_url, title, price)
                else:
                    listing = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        price=price,
                        listing_url=book_url,
                    )
                if listing:
                    self.save_item(listing)
                if self.fetch_detail:
                    time.sleep(self.delay)

            self.logger.info(
                "Page %5d: %2d new listings  (total %d)", page_num, new_count, self.items_scraped
            )
            if len(tiles) < self.ITEMS_PER_PAGE:
                break
            if not self.fetch_detail:
                time.sleep(self.delay)

        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _fetch_detail(self, url: str, fallback_title: str, fallback_price: str | None) -> BookListing | None:
        try:
            resp = self.client.get(url)
            resp.raise_for_status()
        except Exception as e:
            self.logger.warning("Detail fetch failed %s: %s", url, e)
            return BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=fallback_title,
                price=fallback_price,
                listing_url=url,
            )

        soup = BeautifulSoup(resp.text, "html.parser")

        h1 = soup.find("h1")
        title = h1.get_text(strip=True) if h1 else fallback_title

        price_el = soup.select_one(".ask-count")
        price = price_el.get_text(strip=True) if price_el else fallback_price

        # Detail table: jazyk, rok vydání, vydání, nakladatel, místo, stran, ISBN, rozměry
        fields: dict[str, str] = {}
        for row in soup.select("table tr"):
            cells = row.find_all(["th", "td"])
            if len(cells) >= 2:
                key = cells[0].get_text(strip=True).lower().rstrip(":")
                val = cells[1].get_text(strip=True)
                if val:
                    fields[key] = val

        isbn_raw = fields.get("isbn") or fields.get("isbn-13") or fields.get("isbn-10") or None
        if isbn_raw:
            isbn_raw = re.sub(r"[^0-9X]", "", isbn_raw.upper())[:13] or None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            isbn=isbn_raw,
            publisher=fields.get("nakladatel") or None,
            publication_year=fields.get("rok vydání") or None,
            edition=fields.get("vydání") or None,
            language=fields.get("jazyk") or None,
            pages=fields.get("stran") or None,
            dimensions=fields.get("rozměry") or None,
            price=price,
            listing_url=url,
        )


def main():
    parser = argparse.ArgumentParser(description="TrhKnih Czechia used-book spider")
    parser.add_argument("--max-pages", type=int, default=20000)
    parser.add_argument("--delay", type=float, default=0.4)
    parser.add_argument(
        "--no-detail", action="store_true",
        help="Skip detail page fetches (tile data only, much faster)",
    )
    args = parser.parse_args()
    TrhKnihSpider(
        delay=args.delay,
        max_pages=args.max_pages,
        fetch_detail=not args.no_detail,
    ).run()


if __name__ == "__main__":
    main()
