"""
Traça spider — Brazilian used/new book marketplace (traca.com.br).

Platform: Traça Livraria e Sebo
Territory: Brazil
Scale: ~25k listings (~100 pages of 250)

API: Shopify /products.json (public, unauthenticated)
  Bulk:        GET /products.json?limit=250&page=N  (1-indexed, stops at ~page 100)
  Per-product: GET /products/{handle}.json          (for ISBN barcode)

Note: since_id and created_at_max are both ignored by this store's Shopify proxy.
      Page-based pagination works up to page ~100 then returns empty.
      The bulk response omits variants[0].barcode (ISBN-13); use --skip-isbn to skip
      the per-product fetch for a faster run without ISBNs.
"""

import argparse
import re
import time
import httpx
from models import BookListing
from base_spider import BaseSpider

BASE_URL = "https://www.traca.com.br"
PRODUCTS_URL = f"{BASE_URL}/products.json"
PAGE_SIZE = 250

_AUTHOR_RE = re.compile(r"<strong>Autor</strong>\s*([^<]+?)\s*<", re.IGNORECASE)


class TracaSpider(BaseSpider):
    """
    Traça Livraria e Sebo — Brazilian used and new book marketplace.

    Shopify store with ~25k books. Paginated via ?page=N (since_id and
    created_at_max are ignored by the store's proxy). Per-product JSON fetch
    required to obtain the ISBN-13 barcode field absent from bulk responses.
    """

    def __init__(self, limit_pages: int = 0, skip_isbn: bool = False, start_page: int = 1):
        super().__init__(platform_name="Traça", territory="Brazil")
        self.limit_pages = limit_pages
        self.skip_isbn = skip_isbn
        self.start_page = start_page
        self.client = httpx.Client(
            timeout=30.0,
            follow_redirects=True,
            headers={
                "User-Agent": (
                    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 "
                    "(KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
                ),
                "Accept": "application/json",
            },
        )

    def run(self):
        self.logger.info(
            "Starting Traça harvest. start_page=%d limit_pages=%d skip_isbn=%s",
            self.start_page, self.limit_pages, self.skip_isbn,
        )

        try:
            for page in range(self.start_page, 10001):
                if self.limit_pages and (page - self.start_page) >= self.limit_pages:
                    self.logger.info("Reached page limit — stopping at page %d.", page)
                    break

                url = f"{PRODUCTS_URL}?limit={PAGE_SIZE}&page={page}"
                resp = None
                for attempt in range(4):
                    try:
                        resp = self.client.get(url)
                        if resp.status_code == 429:
                            wait = 30 * (attempt + 1)
                            self.logger.warning("429 on page %d — backing off %ds", page, wait)
                            time.sleep(wait)
                            resp = None
                            continue
                        resp.raise_for_status()
                        break
                    except Exception as e:
                        self.logger.error("Request error on page %d: %s", page, e)
                        resp = None
                        break
                if resp is None:
                    self.logger.error("Giving up on page %d after retries.", page)
                    break

                products = resp.json().get("products", [])
                if not products:
                    self.logger.info("No products on page %d — done.", page)
                    break

                for product in products:
                    try:
                        self._process_product(product)
                    except Exception as e:
                        self.logger.error(
                            "Error processing product %s: %s", product.get("id"), e
                        )

                self.logger.info(
                    "Page %d: %d products, %d total saved",
                    page, len(products), self.items_scraped,
                )

                if len(products) < PAGE_SIZE:
                    self.logger.info("Last page reached — done.")
                    break

                time.sleep(0.5)

        finally:
            self.client.close()

        self.logger.info("Finished. %d items saved.", self.items_scraped)

    def _process_product(self, product: dict):
        handle = product.get("handle", "")
        if not handle:
            return

        listing_url = f"{BASE_URL}/products/{handle}"

        # Skip per-product ISBN fetch for already-saved listings
        if listing_url in self._seen_urls:
            return

        title = (product.get("title") or "").strip()
        if not title:
            return

        variants = product.get("variants") or []
        price_str = str(variants[0].get("price", "")) if variants else ""

        body_html = product.get("body_html") or ""
        author = self._extract_author(body_html)

        isbn = ""
        if not self.skip_isbn:
            isbn = self._fetch_barcode(handle)

        self.save_item(BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author or None,
            price=f"BRL {price_str}" if price_str else None,
            isbn=isbn or None,
            listing_url=listing_url,
        ))

    def _extract_author(self, body_html: str) -> str:
        m = _AUTHOR_RE.search(body_html)
        return m.group(1).strip() if m else ""

    def _fetch_barcode(self, handle: str) -> str:
        url = f"{BASE_URL}/products/{handle}.json"
        for attempt in range(2):
            try:
                time.sleep(0.35)
                resp = self.client.get(url, timeout=20.0)
                if resp.status_code == 429:
                    self.logger.debug("429 on %s — backing off 15s", handle)
                    time.sleep(15)
                    continue
                resp.raise_for_status()
                product = resp.json().get("product", {})
                variants = product.get("variants") or []
                if variants:
                    return (variants[0].get("barcode") or "").strip()
                return ""
            except Exception as e:
                self.logger.debug("barcode fetch failed for %s: %s", handle, e)
                break
        return ""


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Traça Livraria e Sebo spider (Brazil)")
    parser.add_argument(
        "--limit", type=int, default=0,
        help="Max pages to fetch (default: 0 = unlimited)",
    )
    parser.add_argument(
        "--start-page", type=int, default=1,
        help="Page number to start from (default: 1)",
    )
    parser.add_argument(
        "--skip-isbn", action="store_true",
        help="Skip per-product barcode fetch (faster, no ISBNs)",
    )
    args = parser.parse_args()
    TracaSpider(limit_pages=args.limit, skip_isbn=args.skip_isbn, start_page=args.start_page).run()
