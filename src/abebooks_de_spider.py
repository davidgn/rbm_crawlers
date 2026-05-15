"""
AbeBooks.de / ZVAB spider — German-market AbeBooks platform.

AbeBooks.de and ZVAB are the same marketplace (Amazon-owned) with different
branding for German-speaking buyers. This spider harvests both:
  - Primary: abebooks.de (English/international seller descriptions, EUR prices)
  - Supplemental: zvab.com (same data, extra brand coverage)

Data source: SSR servlet/SearchResults with schema.org/Book microdata.
  GET /servlet/SearchResults?kn=TERM&pt=book&sts=t&sortby=17&start=N
  30 listings per page, offset via start=N (0, 30, 60, …).
  Practical depth: ~300 pages / 9,000 items per search term before repeats.

Fields via itemprop meta tags on li.result-item:
  isbn, name, author, about (condition note), publisher, datePublished,
  bookEdition, bookFormat (binding), price (EUR), priceCurrency.

Search terms focus on German-language and German-publisher books plus
general used-book terms that surface German-market sellers.
"""
import argparse
import re
import time
from bs4 import BeautifulSoup
import httpx
from models import BookListing
from base_spider import BaseSpider


SEARCH_TERMS = [
    "deutsch",
    "roman deutsch",
    "sachbuch deutsch",
    "kinderbuch deutsch",
    "deutsche literatur",
    "suhrkamp",
    "rowohlt",
    "dtv taschenbuch",
    "fischer verlag",
    "hanser verlag",
    "heyne verlag",
    "diogenes",
    "ullstein",
    "knaur",
    "reclam",
    "beck verlag",
    "springer verlag deutsch",
    "schulbuch deutsch",
    "lehrbuch deutsch",
    "krimi deutsch",
]

PER_PAGE = 30
MAX_START = 9000  # ~300 pages


class AbeBooksDESpider(BaseSpider):
    PLATFORMS = [
        ("AbeBooks.de", "https://www.abebooks.de", "Germany"),
        ("ZVAB",        "https://www.zvab.com",     "Germany"),
    ]
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "de-DE,de;q=0.9,en;q=0.8",
    }

    def __init__(self, delay: float = 1.0, max_start: int = MAX_START):
        super().__init__(platform_name="AbeBooks.de", territory="Germany")
        self.delay = delay
        self.max_start = max_start
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        seen_ids: set[str] = set()
        for platform_name, base_url, territory in self.PLATFORMS:
            self.platform_name = platform_name
            self.territory = territory
            self.logger.info("Harvesting %s (%s)", platform_name, base_url)
            for term in SEARCH_TERMS:
                self._harvest_term(base_url, term, seen_ids)
        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _harvest_term(self, base_url: str, term: str, seen_ids: set):
        for start in range(0, self.max_start + 1, PER_PAGE):
            url = (
                f"{base_url}/servlet/SearchResults"
                f"?kn={term.replace(' ', '+')}&pt=book&sts=t&sortby=17&start={start}"
            )
            try:
                resp = self.client.get(url)
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("term=%r start=%d error: %s", term, start, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            items = soup.select("li.result-item")
            if not items:
                break

            new_count = 0
            for item in items:
                listing = self._listing_from_item(item, base_url)
                if listing is None:
                    continue
                item_id = item.get("data-csa-c-item-id", "") or listing.listing_url
                if item_id in seen_ids:
                    continue
                seen_ids.add(item_id)
                new_count += 1
                self.save_item(listing)

            self.logger.info(
                "%-12s term=%-25s start=%5d: %2d new  (total %d)",
                self.platform_name, repr(term), start, new_count, self.items_scraped,
            )
            if len(items) < PER_PAGE:
                break
            time.sleep(self.delay)

    def _listing_from_item(self, item, base_url: str) -> BookListing | None:
        metas = {
            m.get("itemprop"): m.get("content", "").strip()
            for m in item.find_all("meta", itemprop=True)
            if m.get("itemprop") and m.get("content")
        }

        title = metas.get("name") or ""
        if not title:
            return None

        # Listing URL: first <a> on the item (title link has format /Title/ID/bd)
        url = None
        listing_id = item.get("data-csa-c-item-id", "")
        for a in item.find_all("a", href=True):
            href = a["href"]
            if listing_id and listing_id in href:
                url = href if href.startswith("http") else base_url + href
                break
            if re.search(r"/\d{10,}/bd$", href):
                url = href if href.startswith("http") else base_url + href
                break
        if not url:
            url = f"{base_url}/{listing_id}/bd" if listing_id else base_url

        price_str = metas.get("price")
        currency = metas.get("priceCurrency", "EUR")
        price = f"{price_str} {currency}" if price_str and float(price_str or 0) > 0 else None

        isbn_raw = metas.get("isbn") or None
        if isbn_raw:
            isbn_raw = re.sub(r"[^0-9X]", "", isbn_raw.upper())[:13] or None

        condition_raw = metas.get("itemCondition") or ""
        if "Used" in condition_raw:
            condition = "Used"
        elif "New" in condition_raw:
            condition = "New"
        else:
            condition = None

        seller_note = metas.get("about") or None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=metas.get("author") or None,
            isbn=isbn_raw,
            publisher=metas.get("publisher") or None,
            publication_year=metas.get("datePublished") or None,
            edition=metas.get("bookEdition") or None,
            binding=metas.get("bookFormat") or None,
            condition=condition,
            price=price,
            listing_url=url,
            seller_comments=seller_note,
        )


def main():
    parser = argparse.ArgumentParser(description="AbeBooks.de / ZVAB Germany spider")
    parser.add_argument("--delay", type=float, default=1.0)
    parser.add_argument("--max-start", type=int, default=MAX_START,
                        help="Max start offset per search term (multiple of 30)")
    args = parser.parse_args()
    AbeBooksDESpider(delay=args.delay, max_start=args.max_start).run()


if __name__ == "__main__":
    main()
