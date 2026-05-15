"""
TAAZE.tw spider — Taiwan's largest used book marketplace.

Crawls /gift_index.html category pages to find used-book listings, then visits
individual product pages to extract metadata from JSON-LD (Book @type).
"""
import argparse
import json
import re
import time
from urllib.parse import urljoin

import httpx
from bs4 import BeautifulSoup

from base_spider import BaseSpider
from models import BookListing


CATEGORIES = [
    {"name": "Used Foreign", "params": "t=11&k=03&d=13"},
    {"name": "Used Simplified", "params": "t=11&k=03&d=12"},
    {"name": "Used Japanese", "params": "t=11&k=03&d=24"},
    {"name": "Used Chinese", "params": "t=11&k=03&d=00"},
]

HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
        "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
    )
}


class TaazeSpider(BaseSpider):
    BASE_URL = "https://www.taaze.tw"

    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="TAAZE.tw", territory="Taiwan")
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, verify=False, follow_redirects=True, headers=HEADERS)

    def run(self):
        self.logger.info("Starting TAAZE harvest. limit_pages=%s", self.limit_pages)
        for cat in CATEGORIES:
            self.logger.info("Category: %s", cat["name"])
            for page in range(1, self.limit_pages + 1):
                url = f"{self.BASE_URL}/gift_index.html?{cat['params']}&cp={page}&ps=30&cl=1"
                try:
                    resp = self.client.get(url)
                    soup = BeautifulSoup(resp.text, "html.parser")
                    paths = list({a["href"] for a in soup.find_all("a", href=True) if "products/" in a["href"]})
                    if not paths:
                        break
                    for path in paths:
                        abs_url = urljoin(self.BASE_URL, path)
                        try:
                            self._harvest_item(abs_url, cat["name"])
                        except Exception as e:
                            self.logger.error("Item error %s: %s", abs_url, e)
                        time.sleep(0.5)
                except Exception as e:
                    self.logger.error("Page error: %s", e)
                    break
        self.logger.info("Done: %d items", self.items_scraped)

    def _harvest_item(self, url: str, category: str):
        item_id = url.split("/")[-1].split(".")[0]
        try:
            resp = self.client.get(url)
            if resp.status_code != 200:
                return
            self.cache_html(item_id, resp.text, url=url)
            listing = self._extract(resp.text, url, category)
            if listing:
                self.save_item(listing)
        except Exception as e:
            self.logger.error("Fetch error %s: %s", url, e)

    def _extract(self, html: str, url: str, category: str = "") -> BookListing | None:
        soup = BeautifulSoup(html, "html.parser")

        # JSON-LD Book node
        data: dict = {}
        for script in soup.find_all("script", type="application/ld+json"):
            try:
                payload = json.loads(script.string or "")
                nodes = payload if isinstance(payload, list) else [payload]
                for node in nodes:
                    if isinstance(node, dict) and str(node.get("@type", "")).lower() == "book":
                        data = node
                        break
            except Exception:
                pass
            if data:
                break

        title = (data.get("name") or "").strip()
        if not title:
            title_el = soup.select_one("h1, h2")
            title = title_el.get_text(strip=True) if title_el else None
        if not title:
            return None

        isbn_raw = data.get("isbn") or ""
        isbn_clean = re.sub(r"\D", "", isbn_raw)
        isbn = isbn_clean if re.match(r"97[89]\d{10}$", isbn_clean) else None

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
        price_el = soup.select_one("[class*='price'], [itemprop='price']")
        if price_el:
            price_text = price_el.get_text(strip=True)
            price_m = re.search(r"[\d,]+", price_text)
            if price_m:
                price = f"TWD {price_m.group().replace(',', '')}"

        # Condition
        condition = "Used"

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=pub_year,
            condition=condition,
            price=price,
            category=category or None,
            listing_url=url,
        )


def _backfill_cached(delay: float = 0.5):
    """Re-fetch and extract all TAAZE JSONL records that lack structured data."""
    import json as _json
    import time as _time
    import warnings
    warnings.filterwarnings("ignore")

    spider = TaazeSpider.__new__(TaazeSpider)
    BaseSpider.__init__(spider, "TAAZE.tw", "Taiwan")
    data_file = spider.output_file

    if not data_file.exists():
        print("No data file found.")
        return

    existing: dict[str, dict] = {}
    with data_file.open(encoding="utf-8") as fh:
        for line in fh:
            line = line.strip()
            if line:
                try:
                    d = _json.loads(line)
                    existing[d["listing_url"]] = d
                except Exception:
                    pass

    # Records that are stubs (title == "Cached Item" or no isbn/author)
    stubs = {url: rec for url, rec in existing.items()
             if rec.get("title") == "Cached Item" or not (rec.get("isbn") or rec.get("author"))}
    print(f"Re-fetching {len(stubs)} TAAZE stub records…")

    client = httpx.Client(timeout=30.0, verify=False, follow_redirects=True, headers=HEADERS)
    spider.client = client
    enriched = 0
    for i, (url, rec) in enumerate(stubs.items(), 1):
        try:
            resp = client.get(url)
            if resp.status_code != 200:
                continue
            cat = rec.get("category", "")
            listing = spider._extract(resp.text, url, cat)
            if listing and (listing.isbn or listing.author):
                existing[url] = listing.to_dict()
                enriched += 1
        except Exception as e:
            print(f"  Error {url}: {e}")
        if i % 100 == 0:
            print(f"  {i}/{len(stubs)} fetched, {enriched} enriched")
        _time.sleep(delay)

    tmp = data_file.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for record in existing.values():
            fh.write(_json.dumps(record) + "\n")
    tmp.replace(data_file)
    print(f"Done. Enriched {enriched}/{len(stubs)} stub records.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=50)
    parser.add_argument("--backfill", action="store_true", help="Re-fetch stubs and extract data")
    parser.add_argument("--delay", type=float, default=0.5)
    args = parser.parse_args()
    if args.backfill:
        _backfill_cached(delay=args.delay)
    else:
        TaazeSpider(limit_pages=args.limit).run()
