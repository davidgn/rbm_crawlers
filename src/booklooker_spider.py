"""
Booklooker spider — Germany's largest used-book marketplace (booklooker.de).

Server-rendered results at /Buecher/Angebote/titel={term}
  GET /Buecher/Angebote/titel=TERM?page=N&recPerPage=50
  50 listings per page; book detail rows: div.articleRow containing
  div.resultlist_productsimage (author h3, publisher h3, year, ISBN, condition).

Search terms cover major German book genres and publishers. Dedup via
article ID extracted from listing URL (/id/XXXXXXXXXX).
~5M listings as of May 2026; each term yields up to 5,000 pages.
"""
import argparse
import re
import time
from bs4 import BeautifulSoup
from urllib.parse import urljoin, unquote
import httpx
from models import BookListing
from base_spider import BaseSpider


SEARCH_TERMS = [
    "roman",
    "krimi",
    "biographie",
    "sachbuch",
    "kinderbuch",
    "fantasy",
    "science-fiction",
    "horror",
    "liebesroman",
    "historisch",
    "philosophie",
    "geschichte",
    "psychologie",
    "politik",
    "wirtschaft",
    "kochen",
    "reise",
    "sport",
    "kunst",
    "medizin",
    "naturwissenschaft",
    "informatik",
    "schulbuch",
    "lehrbuch",
    "lyrik",
    "drama",
    "essayistik",
    "suhrkamp",
    "rowohlt",
    "hanser",
    "dtv",
    "diogenes",
    "heyne",
    "goldmann",
    "ullstein",
]

PER_PAGE = 50
BASE_URL = "https://www.booklooker.de"


class BooklookerSpider(BaseSpider):
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "de-DE,de;q=0.9,en;q=0.8",
    }

    def __init__(self, delay: float = 0.5, max_pages: int = 5000):
        super().__init__(platform_name="Booklooker", territory="Germany")
        self.delay = delay
        self.max_pages = max_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        seen_ids: set[str] = set()
        for term in SEARCH_TERMS:
            self._harvest_term(term, seen_ids)
        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _harvest_term(self, term: str, seen_ids: set):
        encoded = term.replace(" ", "+")
        for page_num in range(1, self.max_pages + 1):
            url = f"{BASE_URL}/B%C3%BCcher/Angebote/titel={encoded}"
            params = {"page": page_num, "recPerPage": PER_PAGE}
            try:
                resp = self.client.get(url, params=params)
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("term=%r page=%d error: %s", term, page_num, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            all_rows = soup.select(".articleRow")
            detail_rows = [r for r in all_rows if r.select(".resultlist_productsimage")]
            if not detail_rows:
                break

            new_count = 0
            for row in detail_rows:
                # Article ID from the link URL /id/XXXXXXXXXX
                link_el = row.select_one(".resultlist_productsimage > a")
                href = link_el.get("href", "") if link_el else ""
                id_m = re.search(r"/id/([A-Za-z0-9]+)", href)
                article_id = id_m.group(1) if id_m else href
                if article_id in seen_ids:
                    continue
                seen_ids.add(article_id)
                new_count += 1

                listing = self._listing_from_row(row, href)
                if listing:
                    self.save_item(listing)

            self.logger.info(
                "term=%-20s page %4d: %2d new  (total %d)",
                repr(term), page_num, new_count, self.items_scraped,
            )
            if len(detail_rows) < PER_PAGE:
                break
            time.sleep(self.delay)

    def _listing_from_row(self, row, raw_href: str) -> BookListing | None:
        link_el = row.select_one(".resultlist_productsimage > a")
        if not link_el:
            return None
        href = link_el.get("href", "")
        listing_url = href if href.startswith("http") else urljoin(BASE_URL, href)

        # Title from the URL slug: /Buecher/Author+Title/id/...
        title = None
        slug_m = re.match(r"/[^/]+/([^/]+)/id/", href)
        if slug_m:
            slug = unquote(slug_m.group(1)).replace("+", " ")
            # Remove author prefix if present (format: "Author+Title")
            # Full title is in the img alt text
            img_el = link_el.find("img")
            if img_el and img_el.get("alt"):
                alt = img_el["alt"].strip()
                # alt format: "Author: Title" or just "Title"
                if ": " in alt:
                    title = alt.split(": ", 1)[1].strip()
                else:
                    title = alt

        # Also try title from preceding .articleRow with id="article_..."
        # The sibling with id has the .articleTitleLink
        parent = row.parent
        if parent and not title:
            prev = row.find_previous_sibling("div", class_="articleRow")
            if prev:
                tl = prev.select_one(".articleTitleLink")
                if tl:
                    title = tl.get_text(strip=True)

        if not title:
            return None

        # Description block: author, publisher, year, ISBN, condition
        desc = row.select_one(".resultList_desc")
        author = None
        publisher = None
        year = None
        isbn = None
        condition = None

        if desc:
            h3s = desc.select("h3.seo-headline")
            if len(h3s) >= 1:
                author = h3s[0].get_text(strip=True) or None
            if len(h3s) >= 2:
                publisher = h3s[1].get_text(strip=True) or None

            desc_text = desc.get_text(" ", strip=True)
            year_m = re.search(r"\b(1[89]\d\d|2[012]\d\d)\b", desc_text)
            if year_m:
                year = year_m.group(1)

            isbn_link = desc.select_one('a[href*="isbn="]')
            if isbn_link:
                isbn_raw = re.sub(r"[^0-9X]", "", isbn_link.get_text(strip=True).upper())
                isbn = isbn_raw[:13] or None

            zustand_m = re.search(r"Zustand:\s*(.+?)(?:\s*$|\s*ISBN)", desc_text)
            if zustand_m:
                condition = zustand_m.group(1).strip() or None

        price_el = row.select_one("span.price")
        price = price_el.get_text(strip=True) if price_el else None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=year,
            condition=condition,
            price=price,
            listing_url=listing_url,
        )


def main():
    parser = argparse.ArgumentParser(description="Booklooker Germany used-book spider")
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--max-pages", type=int, default=5000,
                        help="Max pages per search term (50 items/page)")
    args = parser.parse_args()
    BooklookerSpider(delay=args.delay, max_pages=args.max_pages).run()


if __name__ == "__main__":
    main()
