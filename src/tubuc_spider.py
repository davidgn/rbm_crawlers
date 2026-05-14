"""
Tubuc spider — Argentina used-book WooCommerce marketplace (tubuc.com.ar).

Browse: /tienda/page/N/ (12 products per page)
Product pages: standard WooCommerce with JSON-LD Product schema.
~1,742 active listings as of May 2026.
"""
import argparse
import json
import time
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import httpx
from models import BookListing
from base_spider import BaseSpider


class TubucSpider(BaseSpider):
    BASE_URL = "https://tubuc.com"
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "es-AR,es;q=0.9,en;q=0.8",
    }

    def __init__(self, delay: float = 0.8, max_pages: int = 500):
        super().__init__(platform_name="Tubuc", territory="Argentina")
        self.delay = delay
        self.max_pages = max_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        seen: set[str] = set()
        for page_num in range(1, self.max_pages + 1):
            url = (
                f"{self.BASE_URL}/tienda/"
                if page_num == 1
                else f"{self.BASE_URL}/tienda/page/{page_num}/"
            )
            self.logger.info("Index page %d: %s", page_num, url)
            try:
                resp = self.client.get(url)
                if resp.status_code in (404, 410):
                    self.logger.info("End of pages at %d", page_num)
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("Failed to fetch index page %d: %s", page_num, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            product_links = self._extract_product_links(soup, seen)
            if not product_links:
                self.logger.info("No new products on page %d — done", page_num)
                break

            self.logger.info("Found %d product links", len(product_links))
            for link in product_links:
                seen.add(link)
                listing = self._harvest_product(link)
                if listing:
                    self.save_item(listing)
                time.sleep(self.delay)

        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _extract_product_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.select("ul.products li.product a.woocommerce-LoopProduct-link"):
            href = urljoin(self.BASE_URL, a.get("href", ""))
            if href and href not in seen and self.BASE_URL in href:
                links.append(href)
        # fallback: any product link via LoopProduct-link class
        if not links:
            for a in soup.select("a.woocommerce-LoopProduct-link"):
                href = urljoin(self.BASE_URL, a.get("href", ""))
                if href and href not in seen and self.BASE_URL in href:
                    links.append(href)
        return list(dict.fromkeys(links))

    def _harvest_product(self, url: str) -> BookListing | None:
        try:
            resp = self.client.get(url)
            resp.raise_for_status()
        except Exception as e:
            self.logger.warning("Failed to fetch %s: %s", url, e)
            return None

        soup = BeautifulSoup(resp.text, "html.parser")
        ld = self._extract_json_ld(soup)

        title = (ld.get("name") or "").strip()
        if not title:
            h1 = soup.find("h1")
            title = h1.get_text(strip=True) if h1 else None
        if not title:
            return None

        offers = ld.get("offers") or {}
        if isinstance(offers, list):
            offers = offers[0] if offers else {}
        price_val = offers.get("price")
        currency = offers.get("priceCurrency", "ARS")
        price = f"{price_val} {currency}" if price_val else None

        author = None
        isbn = ld.get("sku") or None
        for row in soup.select("table.woocommerce-product-attributes tr"):
            label_el = row.select_one("th")
            value_el = row.select_one("td")
            if not (label_el and value_el):
                continue
            label = label_el.get_text(strip=True).lower()
            value = value_el.get_text(strip=True)
            if "autor" in label or "author" in label:
                author = value or None
            elif "isbn" in label:
                isbn = value or None

        description = (ld.get("description") or "").strip() or None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            price=price,
            listing_url=url,
            seller_comments=description,
        )

    def _extract_json_ld(self, soup: BeautifulSoup) -> dict:
        for script in soup.find_all("script", type="application/ld+json"):
            try:
                data = json.loads(script.string or "")
            except (json.JSONDecodeError, TypeError):
                continue
            if isinstance(data, dict) and data.get("@type") == "Product":
                return data
            if isinstance(data, list):
                for item in data:
                    if isinstance(item, dict) and item.get("@type") == "Product":
                        return item
        return {}


def main():
    parser = argparse.ArgumentParser(description="Tubuc Argentina WooCommerce spider")
    parser.add_argument("--max-pages", type=int, default=500)
    parser.add_argument("--delay", type=float, default=0.8)
    args = parser.parse_args()
    TubucSpider(delay=args.delay, max_pages=args.max_pages).run()


if __name__ == "__main__":
    main()
