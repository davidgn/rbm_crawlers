import argparse
import random
import re
import time
from types import SimpleNamespace
from urllib.parse import urljoin

import httpx
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from isbn_utils import extract_isbn, normalize_isbn
from models import BookListing


CONFIG = SimpleNamespace(platform_name="Bookends AE", territory="UAE")

_BE5_RE = re.compile(r"^[Bb][Ee]5(\d{9,13})$")


def _isbn_from_sku(sku: str | None) -> str | None:
    if not sku:
        return None
    m = _BE5_RE.match(sku.strip())
    if not m:
        return None
    digits = m.group(1)
    return normalize_isbn(digits)


class BookendsAESpider(BaseSpider):
    """
    Bookends (bookends.ae) — UAE main-universe bookstore.

    Dubai-based English and Arabic bookstore.  Captures ISBNs, pricing,
    condition, and bibliographic metadata.
    """

    BASE_URL = "https://bookends.ae"

    JSON_API_COLLECTION = "/collections/all/products.json"
    JSON_API_LIMIT = 250

    BROWSE_CANDIDATES = [
        "/collections/all",
        "/shop",
        "",
    ]
    DETAIL_SIGNALS = ["/collections/all/products/", "/products/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "ar-AE,ar;q=0.9,en;q=0.8",
        "Accept": "application/json, text/html;q=0.9, */*;q=0.8",
    }

    def __init__(self, limit_pages: int = 100, limit_items: int = 5000, query: str | None = None):
        super().__init__(platform_name="Bookends AE", territory="UAE")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.query = query
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def _get_robust_response(self, url: str, headers: dict | None = None, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                req_headers = (headers or self.HEADERS).copy()
                req_headers["User-Agent"] = random.choice([
                    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15",
                    "Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0"
                ])
                resp = self.client.get(url, headers=req_headers)
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
            f"Starting Bookends AE harvest. limit_pages={self.limit_pages}, "
            f"limit_items={self.limit_items}"
        )
        try:
            harvested = self._run_json_api()
            if harvested == 0:
                self.logger.warning(
                    "JSON API yielded no results — falling back to HTML browse."
                )
                self._run_html_browse()
        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items saved.")

    def _run_json_api(self) -> int:
        start_count = self.items_scraped
        base = f"{self.BASE_URL}{self.JSON_API_COLLECTION}"

        for pg in range(1, self.limit_pages + 1):
            if self.items_scraped >= self.limit_items:
                break

            url = f"{base}?limit={self.JSON_API_LIMIT}&page={pg}"
            resp = self._get_robust_response(url, headers={**self.HEADERS, "Accept": "application/json"})
            if not resp:
                break

            if resp.status_code == 404:
                self.logger.info("JSON API endpoint not found (404) — aborting JSON path.")
                break
            if resp.status_code != 200:
                self.logger.warning(f"JSON API returned {resp.status_code} on page {pg} — stopping.")
                break

            try:
                data = resp.json()
            except Exception as e:
                self.logger.warning(f"JSON parse error on page {pg}: {e}")
                break

            products = data.get("products", [])
            if not products:
                self.logger.info(f"JSON API: no more products at page {pg} — done.")
                break

            self.logger.info(f"JSON API page {pg}: {len(products)} products.")
            for prod in products:
                if self.items_scraped >= self.limit_items:
                    return self.items_scraped - start_count
                self._process_json_product(prod)

            if len(products) < self.JSON_API_LIMIT:
                self.logger.info("JSON API: reached last page.")
                break

            time.sleep(0.5)

        return self.items_scraped - start_count

    def _process_json_product(self, prod: dict):
        handle = prod.get("handle", "")
        listing_url = urljoin(self.BASE_URL, f"/products/{handle}") if handle else ""

        if listing_url and listing_url in self._seen_urls:
            return

        title = prod.get("title", "").strip() or "Unknown Title"
        vendor = prod.get("vendor", "").strip() or None

        price_val: str | None = None
        price_curr: str | None = None
        variants = prod.get("variants") or []
        if variants:
            raw_price = variants[0].get("price")
            if raw_price is not None:
                try:
                    price_val = f"{float(raw_price):.2f}"
                    price_curr = "AED"
                except (ValueError, TypeError):
                    pass

        sku: str | None = None
        isbn: str | None = None
        if variants:
            sku = (variants[0].get("sku") or "").strip() or None
        if sku:
            isbn = _isbn_from_sku(sku)
        if not isbn:
            isbn = normalize_isbn(prod.get("product_type", ""))
        if not isbn:
            raw_tags = prod.get("tags") or []
            tag_iter = raw_tags if isinstance(raw_tags, list) else str(raw_tags).split(",")
            for tag in tag_iter:
                candidate = normalize_isbn(tag.strip())
                if candidate:
                    isbn = candidate
                    break

        category = prod.get("product_type", "").strip() or None

        page_html = None
        if listing_url:
            item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", handle)[:80]
            page_isbn, page_html = self._cache_product_page(item_id, listing_url)
            if not isbn and page_isbn:
                isbn = page_isbn

        listing = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=vendor,
            isbn=isbn,
            price=price_val,
            price_currency=price_curr,
            category=category,
            listing_url=listing_url or self.BASE_URL,
            condition="Used" if "used" in title.lower() else None,
        )
        if page_html:
            listing = self.scavenge_metadata(page_html, listing)
        self.save_item(listing)

    def _cache_product_page(self, item_id: str, url: str) -> tuple[str | None, str | None]:
        try:
            resp = self._get_robust_response(url)
            if resp and resp.status_code == 200 and len(resp.text) > 500:
                self.cache_html(item_id, resp.text, url=url)
                soup = BeautifulSoup(resp.text, "html.parser")
                return extract_isbn(soup), resp.text
        except Exception as e:
            self.logger.debug(f"Cache fetch error for {url}: {e}")
        return None, None

    def _run_html_browse(self):
        seen: set[str] = set()
        browse_url = self._find_browse_url()

        for pg_num in range(1, self.limit_pages + 1):
            if self.items_scraped >= self.limit_items:
                break

            candidate_url = (
                browse_url
                if pg_num == 1
                else f"{browse_url}{'&' if '?' in browse_url else '?'}page={pg_num}"
            )

            html = None
            resp = self._get_robust_response(candidate_url)
            if resp and resp.status_code == 200 and len(resp.text) > 500:
                html = resp.text
            elif resp and resp.status_code in (404, 410):
                break

            if not html:
                self.logger.info(f"No content on page {pg_num} — done.")
                break

            self.logger.info(f"HTML browse page {pg_num}: {candidate_url}")
            soup = BeautifulSoup(html, "html.parser")
            book_links = self._extract_links(soup, seen)

            if not book_links:
                self.logger.info(f"No new links on page {pg_num} — done.")
                break

            self.logger.info(f"Found {len(book_links)} new links.")
            for link in book_links:
                if self.items_scraped >= self.limit_items:
                    return
                seen.add(link)
                self._harvest_html_item(link)
                time.sleep(0.7)

    def _find_browse_url(self) -> str:
        for path in self.BROWSE_CANDIDATES:
            candidate = self.BASE_URL + path
            resp = self._get_robust_response(candidate)
            if resp and resp.status_code == 200:
                soup = BeautifulSoup(resp.text, "html.parser")
                hrefs = [a.get("href", "") for a in soup.find_all("a", href=True)]
                if any(sig in (h or "") for h in hrefs for sig in self.DETAIL_SIGNALS):
                    self.logger.info(f"Browse URL confirmed: {candidate}")
                    return candidate
        self.logger.warning("No browse path matched — using homepage.")
        return self.BASE_URL

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

    def _harvest_html_item(self, url: str):
        slug = next(
            (s for s in reversed(url.rstrip("/").split("/")) if s and s != "#"),
            str(int(time.time())),
        )
        slug_clean = slug.split("?")[0]
        item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", slug_clean)[:80]

        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response for {url}")
                return

            self.cache_html(item_id, resp.text, url=url)
            soup = BeautifulSoup(resp.text, "html.parser")

            h1 = soup.find("h1")
            title = h1.get_text(strip=True) if h1 else "Cached Item"

            isbn = _isbn_from_sku(slug_clean) or extract_isbn(soup)

            price_val: str | None = None
            price_curr: str | None = None
            price_el = soup.select_one("[data-product-price], .price__current, .price")
            if price_el:
                raw = price_el.get_text(strip=True)
                if raw:
                    m = re.search(r"([\d]+[.,]\d{2})|([\d]+)", raw)
                    if m:
                        num = (m.group(1) or m.group(2)).replace(",", ".")
                        try:
                            price_val = f"{float(num):.2f}"
                            price_curr = "AED"
                        except ValueError:
                            pass

            listing = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                isbn=isbn,
                price=price_val,
                price_currency=price_curr,
                listing_url=url,
                condition="Cached for AI extraction",
            )
            listing = self.scavenge_metadata(resp.text, listing)
            self.save_item(listing)
        except Exception as e:
            self.logger.error(f"Error harvesting {url}: {e}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Bookends AE (UAE) spider — Shopify JSON API + HTML browse fallback"
    )
    parser.add_argument("--limit", type=int, default=100,
                        help="Max pages to crawl (default: 100)")
    parser.add_argument("--limit-pages", type=int,
                        help="Alias for --limit (overrides if set)")
    parser.add_argument("--limit-items", type=int, default=5000,
                        help="Stop after this many items (default: 5000)")
    parser.add_argument("--query", type=str, default=None)
    args, _ = parser.parse_known_args()
    BookendsAESpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
        query=args.query,
    ).run()
