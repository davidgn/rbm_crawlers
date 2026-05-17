"""
AbeBooks.com spider — US, Canada, and Australia market coverage.

AbeBooks.com is the primary English-language AbeBooks marketplace
(Amazon-owned). Sellers from all English-speaking countries list here.
This spider runs multiple search passes targeting US, Canadian, and
Australian publishers/authors to maximise English-language coverage.

Data source: SSR servlet/SearchResults with schema.org/Book microdata.
  GET /servlet/SearchResults?kn=TERM&pt=book&sts=t&sortby=17&start=N
  30 listings per page, offset via start=N (0, 30, 60, …).
  Practical depth: ~300 pages / 9,000 items per search term before repeats.

Fields via itemprop meta tags on li.result-item:
  isbn, name, author, about (condition note), publisher, datePublished,
  bookEdition, bookFormat (binding), price (USD), priceCurrency.
"""

import argparse
import re
import time
from bs4 import BeautifulSoup
import httpx
from models import BookListing
from base_spider import BaseSpider


# Search terms segmented by territory — harvested independently so territory
# attribution stays accurate.
TERRITORY_TERMS: list[tuple[str, list[str]]] = [
    ("United States", [
        "random house",
        "penguin books usa",
        "harpercollins usa",
        "simon schuster",
        "bantam books",
        "doubleday",
        "farrar straus giroux",
        "knopf",
        "scribner",
        "little brown",
        "houghton mifflin",
        "norton",
        "grove press",
        "university of chicago press",
        "mit press",
        "american fiction",
        "american history",
        "american novel",
        "pulitzer prize",
        "national book award",
    ]),
    ("Canada", [
        "mcclelland stewart",
        "house of anansi",
        "penguin canada",
        "random house canada",
        "raincoast books",
        "coach house",
        "talon books",
        "canadian fiction",
        "canadian author",
        "canada history",
        "canadian poetry",
    ]),
    ("Australia", [
        "allen unwin australia",
        "text publishing",
        "hardie grant",
        "black inc",
        "scribe publications",
        "miegunyah press",
        "currency press",
        "australian fiction",
        "australian author",
        "australia history",
    ]),
]

PER_PAGE = 30
MAX_START = 9000


class AbeBooksCOMSpider(BaseSpider):
    BASE_URL = "https://www.abebooks.com"
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "en-US,en;q=0.9",
    }

    def __init__(self, delay: float = 1.0, max_start: int = MAX_START):
        super().__init__(platform_name="AbeBooks.com", territory="United States")
        self.delay = delay
        self.max_start = max_start
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        seen_ids: set[str] = set()
        for territory, terms in TERRITORY_TERMS:
            self.territory = territory
            self.logger.info("Territory: %s (%d terms)", territory, len(terms))
            for term in terms:
                self._harvest_term(term, seen_ids)
        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _harvest_term(self, term: str, seen_ids: set):
        for start in range(0, self.max_start + 1, PER_PAGE):
            url = (
                f"{self.BASE_URL}/servlet/SearchResults"
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
                listing = self._listing_from_item(item)
                if listing is None:
                    continue
                item_id = item.get("data-csa-c-item-id", "") or listing.listing_url
                if item_id in seen_ids:
                    continue
                seen_ids.add(item_id)
                new_count += 1
                self.save_item(listing)

            self.logger.info(
                "territory=%-14s term=%-30s start=%5d: %2d new  (total %d)",
                self.territory, repr(term), start, new_count, self.items_scraped,
            )
            if len(items) < PER_PAGE or new_count == 0:
                break
            time.sleep(self.delay)

    def _listing_from_item(self, item) -> BookListing | None:
        metas = {
            m.get("itemprop"): m.get("content", "").strip()
            for m in item.find_all("meta", itemprop=True)
            if m.get("itemprop") and m.get("content")
        }

        title = metas.get("name") or ""
        if not title:
            return None

        listing_id = item.get("data-csa-c-item-id", "")
        url = None
        for a in item.find_all("a", href=True):
            href = a["href"]
            if listing_id and listing_id in href:
                url = href if href.startswith("http") else self.BASE_URL + href
                break
            if re.search(r"/\d{10,}/bd$", href):
                url = href if href.startswith("http") else self.BASE_URL + href
                break
        if not url:
            url = f"{self.BASE_URL}/{listing_id}/bd" if listing_id else self.BASE_URL

        price_str = metas.get("price")
        currency = metas.get("priceCurrency", "USD")
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

        return BookListing(
            territory=self.territory,
            platform="AbeBooks.com",
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
            seller_comments=metas.get("about") or None,
        )


def main():
    parser = argparse.ArgumentParser(description="AbeBooks.com (US/CA/AU) spider")
    parser.add_argument("--delay", type=float, default=1.0)
    parser.add_argument("--max-start", type=int, default=MAX_START,
                        help="Max start offset per search term (multiple of 30)")
    args = parser.parse_args()
    AbeBooksCOMSpider(delay=args.delay, max_start=args.max_start).run()


if __name__ == "__main__":
    main()
