import argparse
import random
import re
import time
import httpx
from bs4 import BeautifulSoup
from types import SimpleNamespace
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider
from isbn_utils import extract_isbn


CONFIG = SimpleNamespace(platform_name="AUC Bookstores", territory="Egypt")


class AucEgyptSpider(BaseSpider):
    """
    AUC Bookstores Egypt (aucbookstores.com) — Egypt main-universe bookstore.

    Wide English-language bookstore rail with e-commerce and book-fair
    participation.  Primarily new books; captures ISBNs and pricing.

    httpx + BeautifulSoup (Egyptian retail sites are typically server-rendered).
    Browse paths probed at startup.  Pagination: /page/N/ (WooCommerce) then
    ?page=N.
    """

    BASE_URL = "https://aucbookstores.com"

    BROWSE_CANDIDATES = [
        "/collections/all",
        "/collections/books",
        "/product-category/books",
        "/books",
        "/shop",
        "",
    ]
    DETAIL_SIGNALS = ["/products/", "/product/", "/book/", "/item/", "/books/", "/shop/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "en-US,en;q=0.9,ar;q=0.8",
    }

    def __init__(self, limit_pages: int = 100, limit_items: int = 50, query: str | None = None):
        super().__init__(platform_name="AUC Bookstores", territory="Egypt")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.query = query
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def _get_robust_response(self, url: str, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                headers = self.HEADERS.copy()
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

    def run(self):
        self.logger.info(
            f"Starting AUC Bookstores harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            browse_url = self._find_browse_url()

            for pg_num in range(1, self.limit_pages + 1):
                if self.items_scraped >= self.limit_items:
                    break
                urls_to_try = (
                    [
                        f"{browse_url.rstrip('/')}/page/{pg_num}/",
                        f"{browse_url}?page={pg_num}",
                    ]
                    if pg_num > 1
                    else [browse_url]
                )

                html, used_url = None, browse_url
                for candidate in urls_to_try:
                    resp = self._get_robust_response(candidate)
                    if resp and resp.status_code == 200 and len(resp.text) > 500:
                        html, used_url = resp.text, candidate
                        break
                    if resp and resp.status_code in (404, 410):
                        break

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
                    if self.items_scraped >= self.limit_items:
                        return
                    seen.add(link)
                    self._harvest_item(link)
                    time.sleep(0.7)

        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

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
            h1 = soup.find("h1")
            title = h1.get_text(strip=True) if h1 else "Cached Item"

            price_val = None
            price_curr = None
            for script in soup.find_all("script", type="application/ld+json"):
                try:
                    import json as _j
                    d = _j.loads(script.string or "")
                    nodes = d if isinstance(d, list) else [d]
                    for n in nodes:
                        if isinstance(n, dict) and "offers" in n:
                            offers = n["offers"]
                            if isinstance(offers, list):
                                offers = offers[0]
                            if isinstance(offers, dict):
                                p = offers.get("price")
                                cur = offers.get("priceCurrency", "EGP")
                                if p:
                                    price_val = f"{float(p):.2f}"
                                    price_curr = cur
                except Exception:
                    pass

            listing = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                isbn=extract_isbn(soup),
                price=price_val,
                price_currency=price_curr if price_val else None,
                listing_url=url,
                condition="New",
            )
            listing = self.scavenge_metadata(resp.text, listing)
            self.save_item(listing)
        except Exception as e:
            self.logger.error(f"Error harvesting {url}: {e}")


def _backfill_cached():
    import json as _json
    spider = AucEgyptSpider.__new__(AucEgyptSpider)
    BaseSpider.__init__(spider, "AUC Bookstores", "Egypt")
    data_file = spider.output_file
    cache_dir = spider.cache_dir

    existing: dict[str, dict] = {}
    if data_file.exists():
        with data_file.open(encoding="utf-8") as fh:
            for line in fh:
                line = line.strip()
                if line:
                    try:
                        d = _json.loads(line)
                        existing[d.get("listing_url", "")] = d
                    except Exception:
                        pass

    html_files = list(cache_dir.glob("*.html")) if cache_dir.exists() else []
    print(f"Backfilling {len(html_files)} cached AUC pages…")

    updated = 0
    for html_file in html_files:
        html = html_file.read_text(encoding="utf-8", errors="ignore")
        soup = BeautifulSoup(html, "html.parser")

        h1 = soup.find("h1")
        title = h1.get_text(strip=True) if h1 else ""
        if not title:
            continue
        isbn = extract_isbn(soup)

        url = None
        for rec_url, rec in existing.items():
            if rec.get("title", "") == title:
                url = rec_url
                break
        if not url:
            slug = html_file.stem.replace("_", "-")
            url = f"https://aucbookstores.com/collections/all/products/{slug}"

        price = None
        price_currency = None
        for script in soup.find_all("script", type="application/ld+json"):
            try:
                import json as _j
                d = _j.loads(script.string or "")
                nodes = d if isinstance(d, list) else [d]
                for n in nodes:
                    if isinstance(n, dict) and "offers" in n:
                        offers = n["offers"]
                        if isinstance(offers, list):
                            offers = offers[0]
                        if isinstance(offers, dict):
                            p = offers.get("price")
                            cur = offers.get("priceCurrency", "EGP")
                            if p:
                                price = f"{float(p):.2f}"
                                price_currency = cur
            except Exception:
                pass

        rec = existing.get(url, {})
        rec.update({
            "title": title,
            "isbn": isbn,
            "price": price or rec.get("price"),
            "price_currency": price_currency if price else rec.get("price_currency"),
            "listing_url": url,
            "territory": "Egypt",
            "platform": "AUC Bookstores",
        })
        existing[url] = rec
        updated += 1

    tmp = data_file.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for record in existing.values():
            fh.write(_json.dumps(record) + "\n")
    tmp.replace(data_file)
    print(f"Updated {updated} records. Total: {len(existing)}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="AUC Bookstores Egypt cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int, default=50)
    parser.add_argument("--query", type=str, default=None)
    parser.add_argument("--backfill", action="store_true")
    args, _ = parser.parse_known_args()
    if args.backfill:
        _backfill_cached()
    else:
        AucEgyptSpider(
            limit_pages=args.limit_pages or args.limit,
            limit_items=args.limit_items,
            query=args.query
        ).run()
