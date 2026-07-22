"""
Agapea (agapea.com) — Spain's largest online bookstore.

Agapea is one of Spain's biggest online bookstores, selling new books,
e-books, and media. The site is server-rendered and accessible with plain
httpx requests (no JS required for the listing/search pages).

Search URL pattern:
  https://www.agapea.com/buscar/buscador.php?isbn=&campo=&pag=N&qs=QUERY

Listing containers: `.resumen-vertical .resumen-mini`  (list view)
Detail URL pattern: https://www.agapea.com/libros/SLUG/ISBN/i.htm
"""

import argparse
import random
import re
import time
from types import SimpleNamespace

import httpx
from bs4 import BeautifulSoup

from base_spider import BaseSpider
from isbn_utils import extract_isbn
from models import BookListing

CONFIG = SimpleNamespace(platform_name="Agapea (ES)", territory="Spain")

BASE_URL = "https://www.agapea.com"
SEARCH_URL = BASE_URL + "/buscar/buscador.php"

HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/124.0.0.0 Safari/537.36"
    ),
    "Accept-Language": "es-ES,es;q=0.9,en;q=0.8",
    "Referer": "https://www.agapea.com/",
}

# Default browse categories — Agapea exposes category browsing via these paths
BROWSE_CATEGORIES = [
    "/Libros/",
    "/libros-texto/",
    "/Novela-terror-literatura/",
    "/Informatica-libros/",
    "/Ciencias-Sociales-libros/",
]


class AgapeaESSpider(BaseSpider):
    """
    Full-depth spider for Agapea (agapea.com) — Spain.

    Operates in two modes:
      1. Search mode  (default): iterates search pages for a configurable query.
      2. Browse mode: walks category listing pages when no query is given.

    Both modes cache HTML and extract: title, author, ISBN, price, publisher,
    publication year, language, pages, binding, category and listing URL.
    """

    PAGE_SIZE = 20  # Agapea shows ~20 items per search results page

    def __init__(
        self,
        search_term: str = "",
        limit_pages: int = 50,
        limit_items: int | None = None,
        browse: bool = False,
        query: str | None = None,
    ):
        super().__init__(platform_name="Agapea (ES)", territory="Spain")
        term = query if query is not None else search_term
        self.search_term = term.strip()
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.browse = browse or not self.search_term
        self.client = httpx.Client(
            headers=HEADERS,
            follow_redirects=True,
            timeout=httpx.Timeout(30.0, connect=10.0, read=20.0),
        )

    def _get_robust_response(self, url: str, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                headers = HEADERS.copy()
                headers["User-Agent"] = random.choice([
                    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15",
                    "Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0"
                ])
                resp = self.client.get(url, headers=headers)
                if resp.status_code in [403, 429, 500, 502, 503, 504]:
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

    # ------------------------------------------------------------------
    # Entry point
    # ------------------------------------------------------------------

    def run(self):
        self.logger.info(
            "Starting Agapea (ES) spider. "
            f"mode={'browse' if self.browse else 'search'}, "
            f"limit_pages={self.limit_pages}, limit_items={self.limit_items}"
        )
        try:
            if self.browse:
                self._run_browse()
            else:
                self._run_search(self.search_term)
        finally:
            self.client.close()
        self.logger.info(f"Finished. {self.items_scraped} items scraped.")

    # ------------------------------------------------------------------
    # Search mode
    # ------------------------------------------------------------------

    def _run_search(self, query: str):
        """Paginate through search results for *query*."""
        for page in range(1, self.limit_pages + 1):
            if self._limit_reached():
                break
            params = {
                "isbn": "",
                "campo": "",
                "pag": page,
                "qs": query,
            }
            url = SEARCH_URL + "?" + "&".join(f"{k}={v}" for k, v in params.items())
            self.logger.info(f"Search page {page}: {url}")
            html = self._fetch(url)
            if html is None:
                break
            self.cache_html(f"search_{re.sub(r'[^a-z0-9]', '_', query.lower())}_p{page}", html, url=url)
            count = self._parse_listing_page(html)
            if count == 0:
                self.logger.info("No items found — end of results.")
                break
            time.sleep(1.2)

    # ------------------------------------------------------------------
    # Browse mode
    # ------------------------------------------------------------------

    def _run_browse(self):
        """Walk category pages to harvest a broad set of listings."""
        for cat_path in BROWSE_CATEGORIES:
            if self._limit_reached():
                break
            self.logger.info(f"=== Browsing category: {cat_path} ===")
            for page in range(1, self.limit_pages + 1):
                if self._limit_reached():
                    break
                url = BASE_URL + cat_path + f"?pag={page}"
                self.logger.info(f"Category page {page}: {url}")
                html = self._fetch(url)
                if html is None:
                    break
                slug = cat_path.strip("/").replace("/", "_").replace("-", "_")
                self.cache_html(f"cat_{slug}_p{page}", html, url=url)
                count = self._parse_listing_page(html)
                if count == 0:
                    self.logger.info("No items on page — moving to next category.")
                    break
                time.sleep(1.2)

    # ------------------------------------------------------------------
    # HTTP helper
    # ------------------------------------------------------------------

    def _fetch(self, url: str) -> str | None:
        resp = self._get_robust_response(url)
        if not resp:
            return None
        if resp.status_code == 404:
            self.logger.info(f"404 at {url} — skipping.")
            return None
        if resp.status_code != 200:
            self.logger.warning(f"HTTP {resp.status_code} at {url}")
            return None
        return resp.text

    # ------------------------------------------------------------------
    # Page parser — listing page
    # ------------------------------------------------------------------

    def _parse_listing_page(self, html: str) -> int:
        soup = BeautifulSoup(html, "html.parser")
        items = soup.select(".resumen-vertical .resumen-mini")
        if not items:
            items = soup.select(".bookcase-item")
        if not items:
            return 0

        count = 0
        for item in items:
            if self._limit_reached():
                break
            listing = self._extract_listing(item)
            if listing:
                self.save_item(listing)
                count += 1
        return count

    # ------------------------------------------------------------------
    # Item extractor
    # ------------------------------------------------------------------

    def _extract_listing(self, item) -> BookListing | None:
        h4 = item.find("h4")
        if not h4:
            return None
        a_tag = h4.find("a", href=True)
        if not a_tag:
            a_tag = item.find("a", href=True)
        if not a_tag:
            return None

        title = a_tag.get_text(" ", strip=True)
        if not title:
            return None

        href = a_tag["href"]
        listing_url = href if href.startswith("http") else BASE_URL + href

        isbn = self._isbn_from_url(listing_url)
        if not isbn:
            isbn = extract_isbn(item)

        author = publisher = pub_year = pages = binding = None
        ul = item.find("ul")
        if ul:
            lis = [li.get_text(" ", strip=True) for li in ul.find_all("li")]
            if len(lis) > 0:
                author = lis[0] or None
            if len(lis) > 1:
                publisher = lis[1] or None
            if len(lis) > 2:
                yr_raw = lis[2]
                m = re.search(r"\b(19|20)\d{2}\b", yr_raw)
                if m:
                    pub_year = m.group(0)
                if re.search(r"tapa blanda|rústica|softcover", yr_raw, re.I):
                    binding = "Paperback"
                elif re.search(r"tapa dura|hardcover|cartoné", yr_raw, re.I):
                    binding = "Hardcover"
            if len(lis) > 3:
                p_m = re.search(r"(\d+)\s*p[áa]g", lis[3], re.I)
                if p_m:
                    pages = p_m.group(1)

        price_val = self._extract_price(item)
        category = self._extract_category(item)

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=pub_year,
            pages=pages,
            binding=binding,
            language="Spanish",
            category=category,
            price=price_val,
            price_currency="EUR" if price_val else None,
            listing_url=listing_url,
        )

    # ------------------------------------------------------------------
    # Helpers
    # ------------------------------------------------------------------

    def _isbn_from_url(self, url: str) -> str | None:
        m = re.search(r"/(97[89]\d{10})/", url)
        return m.group(1) if m else None

    def _extract_price(self, item) -> str | None:
        precio_el = item.select_one(".precio")
        if not precio_el:
            return None
        raw = precio_el.get_text(" ", strip=True)
        raw = re.sub(r"^desde\s+", "", raw, flags=re.I).strip()
        m = re.search(r"([\d]+[.,]\d{2})", raw)
        if m:
            num = m.group(1).replace(",", ".")
            try:
                return f"{float(num):.2f}"
            except ValueError:
                return num
        m = re.search(r"([\d]+)", raw)
        if m:
            try:
                return f"{float(m.group(1)):.2f}"
            except ValueError:
                return m.group(1)
        return None

    def _extract_category(self, item) -> str | None:
        for a in item.find_all("a", href=True):
            href = a["href"]
            text = a.get_text(strip=True)
            if re.match(r"^/[A-Za-z][A-Za-z0-9\-]+-libros[/]?$", href) or \
               re.match(r"^/[A-Z][A-Za-z0-9\-]+/$", href):
                if text and len(text) > 2:
                    return text
        return None

    def _limit_reached(self) -> bool:
        return self.limit_items is not None and self.items_scraped >= self.limit_items


# ---------------------------------------------------------------------------
# CLI entry point
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Agapea (agapea.com, Spain) book spider"
    )
    parser.add_argument(
        "--query", "-q",
        type=str,
        default="",
        help="Search query (leave blank to use browse/category mode)",
    )
    parser.add_argument(
        "--limit-pages", "-p",
        type=int,
        default=20,
        help="Maximum number of pages to crawl per query/category (default: 20)",
    )
    parser.add_argument(
        "--limit-items", "-n",
        type=int,
        default=None,
        help="Stop after this many items have been scraped",
    )
    parser.add_argument(
        "--browse",
        action="store_true",
        help="Force browse/category mode even when --query is set",
    )
    args, _ = parser.parse_known_args()

    spider = AgapeaESSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
        browse=args.browse,
        query=args.query,
    )
    spider.run()
    print(f"Done. {spider.items_scraped} items scraped.")
