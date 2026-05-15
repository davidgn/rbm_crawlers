import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from types import SimpleNamespace
from urllib.parse import urljoin
from base_spider import BaseSpider
from isbn_utils import extract_isbn
from models import BookListing


CONFIG = SimpleNamespace(platform_name="Diwan", territory="Egypt")


class DiwanSpider(BaseSpider):
    """
    Diwan (diwanegypt.com) — Egypt main-universe bookstore.

    Leading Egyptian bookseller carrying Arabic and English titles plus events.
    Captures ISBNs, pricing, and language metadata across both Arabic and
    English catalog surfaces.

    httpx + BeautifulSoup.  Browse paths probed at startup.
    Pagination: WooCommerce /page/N/ then ?page=N.
    """

    BASE_URL = "https://diwanegypt.com"

    BROWSE_CANDIDATES = [
        "/product-category/books",
        "/books",
        "/shop",
        "/store",
        "/catalog",
        "/en/shop",
        "",
    ]
    DETAIL_SIGNALS = ["/product/", "/book/", "/item/", "/shop/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "ar,en;q=0.9",
    }

    def __init__(self, limit_pages=100, limit_items=50):
        super().__init__(platform_name="Diwan", territory="Egypt")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def run(self):
        self.logger.info(
            f"Starting Diwan harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            browse_url = self._find_browse_url()

            for pg_num in range(1, self.limit_pages + 1):
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
                    try:
                        resp = self.client.get(candidate)
                        if resp.status_code == 200 and len(resp.text) > 500:
                            html, used_url = resp.text, candidate
                            break
                        if resp.status_code in (404, 410):
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
            try:
                resp = self.client.get(candidate)
                if resp.status_code == 200:
                    soup = BeautifulSoup(resp.text, "html.parser")
                    hrefs = [a.get("href", "") for a in soup.find_all("a", href=True)]
                    if any(sig in (h or "") for h in hrefs for sig in self.DETAIL_SIGNALS):
                        self.logger.info(f"Browse URL confirmed: {candidate}")
                        return candidate
            except Exception as e:
                self.logger.debug(f"Candidate {path} failed: {e}")
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
            resp = self.client.get(url)
            if resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response ({resp.status_code}) for {url}")
                return

            self.cache_html(item_id, resp.text, url=url)

            soup = BeautifulSoup(resp.text, "html.parser")
            h1 = soup.find("h1")
            title = h1.get_text(strip=True) if h1 else "Cached Item"

            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                isbn=extract_isbn(soup),
                listing_url=url,
                condition="Cached for AI extraction",
            ))
        except Exception as e:
            self.logger.error(f"Error harvesting {url}: {e}")


def _backfill_cached():
    import json as _json
    spider = DiwanSpider.__new__(DiwanSpider)
    BaseSpider.__init__(spider, "Diwan", "Egypt")
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
    print(f"Backfilling {len(html_files)} cached Diwan pages…")

    updated = 0
    for html_file in html_files:
        html = html_file.read_text(encoding="utf-8", errors="ignore")
        soup = BeautifulSoup(html, "html.parser")
        h1 = soup.find("h1")
        title = h1.get_text(strip=True) if h1 else ""
        if not title or title == "Cached Item":
            continue

        isbn = extract_isbn(soup)

        # Try to get URL from existing record matching by title
        url = None
        for rec_url, rec in existing.items():
            if rec.get("title", "") == title:
                url = rec_url
                break
        if not url:
            slug = re.sub(r"[^a-z0-9-]", "-", title.lower())[:80]
            url = f"https://diwanegypt.com/product/{slug}"

        existing[url] = {
            "territory": "Egypt",
            "platform": "Diwan",
            "title": title,
            "isbn": isbn,
            "listing_url": url,
        }
        updated += 1

    tmp = data_file.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for record in existing.values():
            fh.write(_json.dumps(record) + "\n")
    tmp.replace(data_file)
    print(f"Updated {updated} records. Total: {len(existing)}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Diwan Egypt cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int, default=50)
    parser.add_argument("--backfill", action="store_true")
    args = parser.parse_args()
    if args.backfill:
        _backfill_cached()
    else:
        DiwanSpider(limit_pages=args.limit_pages or args.limit, limit_items=args.limit_items).run()
