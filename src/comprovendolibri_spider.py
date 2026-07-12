import argparse
import re
from urllib.parse import parse_qs, urljoin, urlparse
from bs4 import BeautifulSoup
from playwright_search_spider import PlaywrightSearchSpider
from models import BookListing

class ComproVendoLibriSpider(PlaywrightSearchSpider):
    """
    Spider for ComproVendoLibri (Italy).
    Uses Playwright to bypass Cloudflare challenges.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="ComproVendoLibri.it",
            base_url="https://www.comprovendolibri.it",
            search_path="cerca.asp?t=1635&bloccocorrente=1&Xpagina={page}&catalogo={query}",
            selectors={
                'container': 'tr',
                'title': 'a[href*="ordina.asp"]',
                'link': 'a[href*="ordina.asp"]',
                'price': 'td',
            },
            territory="Italy",
            price_currency="EUR",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

    def _parse_item(self, item_soup):
        anchor = item_soup.select_one("a[href*='ordina.asp']")
        if not anchor:
            return
        title = self._clean(anchor.get_text(" ", strip=True))
        if not title:
            return
        href = urljoin(self.base_url, anchor["href"])
        parsed = urlparse(href)
        query = parse_qs(parsed.query)
        if not query.get("tt") and not query.get("id"):
            return
        row_text = self._clean(item_soup.get_text(" ", strip=True)) if item_soup else ""
        
        price_val = self._price(row_text)
        listing = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            seller_id=self._first_match(r"\b([A-Z0-9_]{3,}) vende anche questi libri usati", row_text),
            title=title,
            author=self._first_match(r"\bdi\s+(.+?)(?:,\s*(?:19|20)\d{2}\b| ISBN:| condizioni:| In vendita|$)", row_text),
            isbn=self._first_match(r"ISBN:\s*([0-9Xx -]{10,20})", row_text),
            publisher=self._first_match(r"\b(?:19|20)\d{2},\s+(.+?)(?: ISBN:| condizioni:| In vendita|$)", row_text),
            publication_year=self._first_match(r"\b(19\d{2}|20\d{2})\b", row_text),
            condition=self._first_match(r"condizioni:\s*(.+?)(?: In vendita|$)", row_text),
            price=price_val,
            price_currency=self.price_currency,
            listing_url=self._canonical_url(href),
        )
        self.save_item(listing)

    def _canonical_url(self, href: str) -> str:
        parsed = urlparse(href)
        match_id = re.search(r"(?:^|&)id=([^&]*)", parsed.query)
        match_tt = re.search(r"(?:^|&)tt=([^&]*)", parsed.query)
        listing_id = match_id.group(1) if match_id else None
        title = match_tt.group(1) if match_tt else None
        if listing_id and title:
            return f"{self.base_url}/ordina.asp?id={listing_id}&tt={title}&db="
        return href

    def _price(self, text: str) -> str | None:
        match = re.search(r"(\d+(?:,\d{2})?)\s*€", text)
        if match:
            return match.group(1).replace(",", ".")
        return None

    def _first_match(self, pattern: str, text: str) -> str | None:
        match = re.search(pattern, text, re.IGNORECASE)
        return self._clean(match.group(1)) if match else None

    def _clean(self, value: str | None) -> str | None:
        if not value:
            return None
        return re.sub(r"\s+", " ", value).strip(" ,;")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="ComproVendoLibri Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = ComproVendoLibriSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
