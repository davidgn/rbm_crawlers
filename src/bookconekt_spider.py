import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider
from isbn_utils import extract_isbn


class BookconektSpider(BaseSpider):
    """
    Bookconekt (bookconekt.com) — Benin main-universe book marketplace.

    Beninese online book marketplace connecting buyers and sellers of new and
    used books.  Captures ISBNs, pricing, condition, and bibliographic metadata.

    httpx + BeautifulSoup (server-rendered).
    Browse paths probed at startup.  Pagination: WooCommerce /page/N/ then ?page=N.
    """

    BASE_URL = "https://bookconekt.com"

    BROWSE_CANDIDATES = [
        "/product-category/livres-beninois/",
        "/product-category/romans/",
        "/product-category/ouvrages-pratiques/",
        "/product-category/manuels-scolaires/",
        "/product-category/autres-genres-litteraires/",
        "/shop",
        "",
    ]
    DETAIL_SIGNALS = ["/product/", "/book/", "/listing/", "/item/", "/books/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "fr-BJ,fr;q=0.9,en;q=0.8",
    }

    def __init__(self, limit_pages=100, limit_items=50):
        super().__init__(platform_name="Bookconekt", territory="Benin")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.items_attempted = 0
        timeout = httpx.Timeout(10.0, connect=5.0, read=8.0)
        self.client = httpx.Client(
            timeout=timeout, follow_redirects=True, headers=self.HEADERS
        )

    def _get_robust_response(self, url, params=None, max_retries=3):
        for attempt in range(max_retries):
            try:
                resp = self.client.get(url, params=params)
                if resp.status_code in [403, 429, 500, 502, 503, 504]:
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

    def run(self):
        self.logger.info(
            f"Starting Bookconekt harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            browse_url = self._find_browse_url()

            for pg_num in range(1, self.limit_pages + 1):
                if self.items_attempted >= self.limit_items:
                    break
                urls_to_try = (
                    [
                        f"{browse_url.rstrip('/')}/page/{pg_num}/",
                        f"{browse_url}{'&' if '?' in browse_url else '?'}page={pg_num}",
                    ]
                    if pg_num > 1
                    else [browse_url]
                )

                html, used_url = None, browse_url
                for candidate in urls_to_try:
                    try:
                        resp = self._get_robust_response(candidate)
                        if resp and resp.status_code == 200 and len(resp.text) > 500:
                            html, used_url = resp.text, candidate
                            break
                        if resp and resp.status_code in (404, 410):
                            break
                    except Exception as e:
                        self.logger.debug(f"Fetch error for {candidate}: {e}")

                if not html:
                    self.logger.info(f"No content on page {pg_num} — done.")
                    break

                self.logger.info(f"Index page {pg_num}: {used_url}")
                soup = BeautifulSoup(html, "html.parser")
                book_links = self._extract_links(soup, seen)

                if not book_links:
                    self.logger.info(f"No new links on page {pg_num} — done.")
                    break

                self.logger.info(f"Found {len(book_links)} new links.")
                for link in book_links:
                    if self.items_attempted >= self.limit_items:
                        break
                    self.items_attempted += 1
                    seen.add(link)
                    self._harvest_item(link)
                    time.sleep(0.7)

        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    def _find_browse_url(self) -> str:
        candidate = self.BASE_URL + self.BROWSE_CANDIDATES[0]
        self.logger.info(f"Using pinned browse URL: {candidate}")
        return candidate

    def _extract_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = urljoin(self.BASE_URL, a["href"])
            if (
                self.BASE_URL in href
                and any(sig in href for sig in self.DETAIL_SIGNALS)
                and href not in seen
            ):
                links.append(href)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        slug = next(
            (s for s in reversed(url.rstrip("/").split("/")) if s and s != "#"),
            str(int(time.time()))
        )
        item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", slug)[:80]

        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response for {url}")
                return

            self.cache_html(item_id, resp.text, url=url)

            soup = BeautifulSoup(resp.text, "html.parser")
            listing = self._parse_detail(soup, url)

            self.save_item(listing)
        except Exception as e:
            self.logger.error(f"Error harvesting {url}: {e}")

    def _parse_detail(self, soup: BeautifulSoup, url: str) -> BookListing:
        h1 = soup.find("h1")
        title = h1.get_text(" ", strip=True) if h1 else "Cached Item"

        fields = self._detail_fields(soup)
        price_val, price_curr = self._price_and_currency(soup)
        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=fields.get("author"),
            isbn=extract_isbn(soup),
            publisher=fields.get("publisher"),
            publication_year=fields.get("publication_year"),
            category=fields.get("category"),
            condition=fields.get("condition") or "Cached for AI extraction",
            price=price_val,
            price_currency=price_curr,
            listing_url=url,
            seller_comments=fields.get("seller_comments"),
        )

    def _detail_fields(self, soup: BeautifulSoup) -> dict[str, str]:
        text = soup.get_text(" ", strip=True)
        fields: dict[str, str] = {}
        labels = {
            "author": "Auteur|Author",
            "publisher": "Editeur|Éditeur|Publisher",
            "publication_year": "Date de publication|Publication|Publié le|Published",
            "category": "Catégorie|Categorie|Category",
            "condition": "Etat|État|Condition",
        }
        label_stop = "|".join(labels.values()) + "|ISBN|Prix|Price"
        for key, label in labels.items():
            value = self._field_after_label(text, label, label_stop)
            if value:
                fields[key] = value

        description = soup.select_one(
            ".woocommerce-product-details__short-description, "
            ".product-description, .summary .description, #tab-description"
        )
        if description:
            comment = self._clean(description.get_text(" ", strip=True))
            if comment:
                fields["seller_comments"] = comment[:500]
        return fields

    def _field_after_label(self, text: str, label: str, label_stop: str) -> str | None:
        match = re.search(
            rf"(?i)(?:{label})\s*:?\s*(.+?)(?=\s+(?:{label_stop})\s*:|$)",
            text,
        )
        return self._clean(match.group(1)) if match else None

    def _price_and_currency(self, soup: BeautifulSoup) -> tuple[str | None, str | None]:
        for selector in (
            ".price .amount",
            ".woocommerce-Price-amount",
            "p.price",
            ".price",
        ):
            node = soup.select_one(selector)
            if not node:
                continue
            res = self._price_from_text(node.get_text(" ", strip=True))
            if res[0]:
                return res
        return self._price_from_text(soup.get_text(" ", strip=True))

    def _price_from_text(self, text: str) -> tuple[str | None, str | None]:
        match = re.search(r"([0-9][0-9\s.,]*)\s*(?:CFA|FCFA|XOF|₣)", text, re.I)
        if not match:
            return (None, None)
        amount = re.sub(r"[^\d]", "", match.group(1))
        return (amount, "XOF") if amount else (None, None)

    def _clean(self, value: str) -> str:
        return re.sub(r"\s+", " ", value).strip(" :-\u00a0")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Bookconekt Benin cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    BookconektSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items or 50,
    ).run()
