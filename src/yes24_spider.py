import argparse
import json
import re
import time
import httpx
from bs4 import BeautifulSoup
from types import SimpleNamespace
from urllib.parse import urljoin
from base_spider import BaseSpider
from isbn_utils import normalize_isbn
from models import BookListing


CONFIG = SimpleNamespace(platform_name="YES24", territory="South Korea")


class Yes24Spider(BaseSpider):
    """
    YES24 (yes24.com) — South Korea's largest online bookstore with used-book (중고) section.

    Listing pages are server-rendered; httpx + BeautifulSoup is sufficient.
    Product detail pages contain JSON-LD Book nodes with isbn, name, author, publisher.
    """

    BASE_URL = "https://www.yes24.com"
    LIST_URL = (
        "https://www.yes24.com/Product/Search"
        "?CategoryNumber={cat}&SearchTarget=Used&Query=&SortType=New&PageNumber={page}"
    )

    CATEGORIES = [
        {"name": "All Books (Used)",     "cat": "001"},
        {"name": "Foreign Books (Used)", "cat": "002"},
    ]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "ko-KR,ko;q=0.9,en;q=0.8",
        "Referer": "https://www.yes24.com/",
    }

    def __init__(self, limit_pages=100, limit_items=50):
        super().__init__(platform_name="YES24", territory="South Korea")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def run(self):
        self.logger.info("Starting YES24 harvest. limit_pages=%s", self.limit_pages)
        seen: set[str] = set()

        try:
            for cat in self.CATEGORIES:
                self.logger.info("=== Category: %s ===", cat["name"])
                for pg_num in range(1, self.limit_pages + 1):
                    url = self.LIST_URL.format(cat=cat["cat"], page=pg_num)
                    try:
                        resp = self.client.get(url)
                        resp.raise_for_status()
                    except Exception as e:
                        self.logger.error("Listing fetch failed: %s", e)
                        break

                    soup = BeautifulSoup(resp.text, "html.parser")
                    detail_links = self._extract_detail_links(soup, seen)
                    if not detail_links:
                        break

                    for link in detail_links:
                        if self.items_scraped >= self.limit_items:
                            return
                        seen.add(link)
                        self._harvest_item(link)
                        time.sleep(0.6)

        finally:
            self.client.close()

        self.logger.info("Finished. %d items scraped.", self.items_scraped)

    def _extract_detail_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = a["href"]
            if re.search(r"/Product/Goods/\d+", href):
                full = urljoin(self.BASE_URL, href)
                if full not in seen:
                    links.append(full)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        m = re.search(r"/Goods/(\d+)", url)
        item_id = m.group(1) if m else re.sub(r"[^a-zA-Z0-9_-]", "_", url)[-60:]

        try:
            resp = self.client.get(url)
            if resp.status_code != 200 or len(resp.text) < 500:
                return
            self.cache_html(item_id, resp.text, url=url)
            listing = self._extract(resp.text, url)
            if listing:
                self.save_item(listing)
        except Exception as e:
            self.logger.error("Error harvesting %s: %s", url, e)

    def _extract(self, html: str, url: str) -> BookListing | None:
        soup = BeautifulSoup(html, "html.parser")

        # JSON-LD Book node (preferred — contains isbn, name, author, publisher)
        data: dict = {}
        for script in soup.find_all("script", type="application/ld+json"):
            try:
                payload = json.loads(script.string or "")
                nodes = payload if isinstance(payload, list) else [payload]
                for node in nodes:
                    if isinstance(node, dict):
                        types = node.get("@type", [])
                        if isinstance(types, str):
                            types = [types]
                        if "Book" in types or "book" in types:
                            data = node
                            break
            except Exception:
                pass
            if data:
                break

        title = (data.get("name") or "").strip()
        if not title:
            el = soup.find("h2", class_="gd_name") or soup.find("div", class_="gd_titArea")
            title = el.get_text(strip=True) if el else ""
        if not title:
            return None

        isbn = normalize_isbn(data.get("isbn") or "")

        author_raw = data.get("author", "")
        if isinstance(author_raw, list):
            author = ", ".join(
                a.get("name", a) if isinstance(a, dict) else str(a) for a in author_raw
            ) or None
        elif isinstance(author_raw, dict):
            author = author_raw.get("name") or None
        else:
            author = str(author_raw).strip() or None

        publisher_raw = data.get("publisher", "")
        if isinstance(publisher_raw, dict):
            publisher = publisher_raw.get("name") or None
        else:
            publisher = str(publisher_raw).strip() or None

        pub_year = (data.get("datePublished") or "")[:4] or None

        # Price from page
        price = None
        price_el = soup.find(class_=re.compile(r"yes_b_price|price_real|gd_price", re.I))
        if price_el:
            m = re.search(r"[\d,]+", price_el.get_text())
            if m:
                price = f"KRW {m.group().replace(',', '')}"

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=pub_year,
            condition="Used",
            price=price,
            listing_url=url,
        )


def _backfill_cached():
    """Re-extract all cached YES24 pages with the improved extractor."""
    import json as _json

    spider = Yes24Spider.__new__(Yes24Spider)
    BaseSpider.__init__(spider, "YES24", "South Korea")
    data_file = spider.output_file

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

    cache_dir = spider.cache_dir
    html_files = [f for f in cache_dir.glob("*.html")] if cache_dir.exists() else []
    print(f"Backfilling {len(html_files)} cached YES24 pages…")

    updated = 0
    for html_file in html_files:
        item_id = html_file.stem
        url = f"https://www.yes24.com/Product/Goods/{item_id}"
        html = html_file.read_text(encoding="utf-8", errors="ignore")
        listing = spider._extract(html, url)
        if listing:
            existing[url] = listing.to_dict()
            updated += 1

    tmp = data_file.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for record in existing.values():
            fh.write(_json.dumps(record) + "\n")
    tmp.replace(data_file)
    print(f"Updated {updated} records. Total: {len(existing)}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="YES24 (South Korea) spider")
    parser.add_argument("--limit-pages", type=int, default=100)
    parser.add_argument("--limit-items", type=int, default=50)
    parser.add_argument("--backfill", action="store_true", help="Re-extract cached pages")
    args = parser.parse_args()
    if args.backfill:
        _backfill_cached()
    else:
        Yes24Spider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
