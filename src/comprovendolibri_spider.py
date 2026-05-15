import argparse
import json
import re
import subprocess
from urllib.parse import parse_qs, urljoin, urlparse

from bs4 import BeautifulSoup

from base_spider import BaseSpider
from configurable_marketplace_spider import MarketplaceConfig
from models import BookListing


CONFIG = MarketplaceConfig(
    platform_name="ComproVendoLibri.it",
    territory="Italy",
    base_url="https://www.comprovendolibri.it",
    browse_paths=("/catalogo_libri_degli_utenti",),
    detail_signals=("/ordina.asp",),
    headers={"Accept-Language": "it-IT,it;q=0.9,en;q=0.8"},
)


class ComproVendoLibriSpider(BaseSpider):
    """ComproVendoLibri catalog crawler.

    The site serves Cloudflare Managed Challenge pages to the local httpx,
    curl-cffi, cloudscraper, and Playwright paths. Keep the external render
    dependency isolated to this spider instead of making it a generic default.
    """

    def __init__(self, limit_pages: int = 1, limit_items: int = 50, wait_ms: int = 3000):
        super().__init__(platform_name=CONFIG.platform_name, territory=CONFIG.territory)
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.wait_ms = wait_ms

    def run(self):
        seen: set[str] = set()
        for page_num in range(1, self.limit_pages + 1):
            if self.items_scraped >= self.limit_items:
                return
            url = self._catalog_url(page_num)
            html = self._fetch_firecrawl_html(url)
            if not html:
                self.logger.warning("Could not fetch ComproVendoLibri catalog page %s", url)
                return
            self.cache_html(f"index_{self._safe_id(url)}", html, url=url)
            for listing in self._parse_listings(html):
                if self.items_scraped >= self.limit_items:
                    return
                if listing.listing_url in seen:
                    continue
                seen.add(listing.listing_url)
                self.save_item(listing)

    def _catalog_url(self, page_num: int) -> str:
        if page_num <= 1:
            return f"{CONFIG.base_url}/catalogo_libri_degli_utenti"
        return (
            f"{CONFIG.base_url}/catalogo.asp?"
            f"t=1635&bloccocorrente=1&Xpagina={page_num}"
            "&catalogo=&userid=&orderby=&tabricerca=&db=utenti&aggpag=cerca"
        )

    def _fetch_firecrawl_html(self, url: str) -> str | None:
        output_path = self.cache_dir / f"firecrawl_{self._safe_id(url)}.json"
        cmd = [
            "firecrawl",
            "scrape",
            url,
            "--format",
            "rawHtml,links",
            "--wait-for",
            str(self.wait_ms),
            "-o",
            str(output_path),
        ]
        try:
            subprocess.run(cmd, check=True, capture_output=True, text=True, timeout=120)
            payload = json.loads(output_path.read_text(encoding="utf-8"))
        except (FileNotFoundError, subprocess.SubprocessError, json.JSONDecodeError, OSError) as exc:
            self.logger.warning("Firecrawl fetch failed for %s: %s", url, exc)
            return None
        html = payload.get("rawHtml")
        if not isinstance(html, str) or len(html) < 500:
            return None
        return html

    def _parse_listings(self, html: str) -> list[BookListing]:
        soup = BeautifulSoup(html, "html.parser")
        listings: list[BookListing] = []
        for anchor in soup.select("a[href*='ordina.asp']"):
            title = self._clean(anchor.get_text(" ", strip=True))
            if not title:
                continue
            href = urljoin(CONFIG.base_url, anchor["href"])
            parsed = urlparse(href)
            query = parse_qs(parsed.query)
            if not query.get("tt"):
                continue
            row = anchor.find_parent("tr")
            row_text = self._clean(row.get_text(" ", strip=True)) if row else ""
            listings.append(
                BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    seller_id=self._seller(row_text),
                    title=title,
                    author=self._author(row_text),
                    isbn=self._first_match(r"ISBN:\s*([0-9Xx -]{10,20})", row_text),
                    publisher=self._publisher(row_text),
                    publication_year=self._first_match(r"\b(19\d{2}|20\d{2})\b", row_text),
                    category=self._category(row_text),
                    condition=self._condition(row_text),
                    price=self._price(row_text),
                    listing_url=self._canonical_url(href),
                    seller_comments=self._seller_comments(row_text),
                )
            )
        return listings

    def _canonical_url(self, href: str) -> str:
        parsed = urlparse(href)
        listing_id = self._raw_query_value(parsed.query, "id")
        title = self._raw_query_value(parsed.query, "tt")
        if listing_id and title:
            return f"{CONFIG.base_url}/ordina.asp?id={listing_id}&tt={title}&db="
        return href

    def _raw_query_value(self, query: str, key: str) -> str | None:
        match = re.search(rf"(?:^|&){re.escape(key)}=([^&]*)", query)
        return match.group(1) if match else None

    def _price(self, text: str) -> str | None:
        value = self._first_match(r"(\d+(?:,\d{2})?)\s*€", text)
        return f"{value} €" if value else None

    def _author(self, text: str) -> str | None:
        return self._first_match(r"\bdi\s+(.+?)(?:,\s*(?:19|20)\d{2}\b| ISBN:| condizioni:| In vendita|$)", text)

    def _publisher(self, text: str) -> str | None:
        segment = self._post_year_segment(text)
        if not segment:
            return None
        match = re.match(r"(.+?)\s+([A-ZÀ-Ý][A-ZÀ-Ý0-9À-Ý ,&'/-]{2,})$", segment)
        return self._clean(match.group(1) if match else segment)

    def _condition(self, text: str) -> str | None:
        return self._first_match(r"condizioni:\s*(.+?)(?: In vendita|$)", text)

    def _category(self, text: str) -> str | None:
        segment = self._post_year_segment(text)
        if not segment:
            return None
        match = re.match(r".+?\s+([A-ZÀ-Ý][A-ZÀ-Ý0-9À-Ý ,&'/-]{2,})$", segment)
        if match:
            return self._clean(match.group(1))
        return None

    def _post_year_segment(self, text: str) -> str | None:
        return self._first_match(r"\b(?:19|20)\d{2},\s+(.+?)(?: ISBN:| condizioni:| In vendita|$)", text)

    def _seller(self, text: str) -> str | None:
        return self._first_match(r"\b([A-Z0-9_]{3,}) vende anche questi libri usati", text)

    def _seller_comments(self, text: str) -> str | None:
        sale = self._first_match(r"(In vendita .+?)(?: [A-Z0-9_]{3,} vende anche questi libri usati|$)", text)
        return sale

    def _first_match(self, pattern: str, text: str) -> str | None:
        match = re.search(pattern, text, re.IGNORECASE)
        if not match:
            return None
        return self._clean(match.group(1))

    def _clean(self, value: str | None) -> str | None:
        if not value:
            return None
        return re.sub(r"\s+", " ", value).strip(" ,;")

    def _safe_id(self, value: str) -> str:
        parsed = urlparse(value)
        raw = f"{parsed.netloc}_{parsed.path}_{parsed.query}".strip("_") or value
        return re.sub(r"[^a-zA-Z0-9_-]+", "_", raw).strip("_")[:120]


def main():
    parser = argparse.ArgumentParser(description="ComproVendoLibri Italy Firecrawl-backed spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=50)
    parser.add_argument("--wait-ms", type=int, default=3000)
    args = parser.parse_args()
    ComproVendoLibriSpider(
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
        wait_ms=args.wait_ms,
    ).run()


if __name__ == "__main__":
    main()
