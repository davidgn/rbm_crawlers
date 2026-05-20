"""
TAAZE.tw spider — Taiwan's largest used book marketplace.

Uses the official sitemap files (used-a.txt through used-d.txt) to enumerate
~177K used-book OIDs, then fetches each product page to extract metadata via
JSON-LD (Book @type) with ISBN, title, author, and publisher.

Sitemap: https://taaze.tw/sitemap.xml → used-{a,b,c,d}.txt
Product pages: https://www.taaze.tw/products/{oid}.html
"""
import argparse
import json
import re
import time

import httpx
from bs4 import BeautifulSoup

from base_spider import BaseSpider
from models import BookListing


SITEMAP_FILES = [
    "https://taaze.tw/sitemap/used-a.txt",
    "https://taaze.tw/sitemap/used-b.txt",
    "https://taaze.tw/sitemap/used-c.txt",
    "https://taaze.tw/sitemap/used-d.txt",
]

HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
        "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
    )
}


class TaazeSpider(BaseSpider):
    BASE_URL = "https://www.taaze.tw"

    def __init__(self, limit: int = 0, delay: float = 0.5):
        super().__init__(platform_name="TAAZE.tw", territory="Taiwan")
        self.limit = limit
        self.delay = delay
        self.client = httpx.Client(timeout=30.0, verify=False, follow_redirects=True, headers=HEADERS)

    def _load_oids(self) -> list[str]:
        """Download sitemap files and extract OIDs from usedList URLs."""
        oids = []
        seen = set()
        for sitemap_url in SITEMAP_FILES:
            try:
                resp = self.client.get(sitemap_url, timeout=30.0)
                if resp.status_code != 200:
                    self.logger.warning("Sitemap %s returned %d", sitemap_url, resp.status_code)
                    continue
                for line in resp.text.splitlines():
                    line = line.strip()
                    m = re.search(r'oid=(\d+)', line)
                    if m:
                        oid = m.group(1)
                        if oid not in seen:
                            seen.add(oid)
                            oids.append(oid)
                self.logger.info("Sitemap %s: %d OIDs so far", sitemap_url.split('/')[-1], len(oids))
            except Exception as e:
                self.logger.error("Failed to fetch sitemap %s: %s", sitemap_url, e)
        return oids

    def run(self):
        self.logger.info("Loading OIDs from sitemap files…")
        all_oids = self._load_oids()
        self.logger.info("Total OIDs from sitemaps: %d", len(all_oids))

        # Filter out already-scraped OIDs
        to_scrape = [
            oid for oid in all_oids
            if f"{self.BASE_URL}/products/{oid}.html" not in self._seen_urls
        ]
        self.logger.info("OIDs to scrape (new): %d", len(to_scrape))

        if self.limit:
            to_scrape = to_scrape[:self.limit]
            self.logger.info("Limiting to %d", self.limit)

        for i, oid in enumerate(to_scrape, 1):
            if i % 1000 == 0:
                self.logger.info("[%d/%d] scraped=%d", i, len(to_scrape), self.items_scraped)
            url = f"{self.BASE_URL}/products/{oid}.html"
            try:
                self._harvest_item(url)
            except Exception as e:
                self.logger.error("Item error %s: %s", url, e)
            time.sleep(self.delay)

        self.logger.info("Done: %d items scraped", self.items_scraped)
        self.client.close()

    def _harvest_item(self, url: str):
        try:
            resp = self.client.get(url)
            if resp.status_code != 200:
                return
            self.cache_html(url.split("/")[-1].split(".")[0], resp.text, url=url)
            listing = self._extract(resp.text, url)
            if listing:
                self.save_item(listing)
        except Exception as e:
            self.logger.error("Fetch error %s: %s", url, e)

    def _extract(self, html: str, url: str) -> BookListing | None:
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

        # Fallback: parse ISBN from meta description
        if not isbn:
            meta_desc = soup.find("meta", attrs={"name": "description"})
            if meta_desc:
                m = re.search(r'ISBN[：:]?\s*(97[89]\d{10})', meta_desc.get("content", ""))
                if m:
                    isbn = m.group(1)

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

        price_el = soup.select_one("[class*='price'], [itemprop='price']")
        price = None
        if price_el:
            price_text = price_el.get_text(strip=True)
            price_m = re.search(r"[\d,]+", price_text)
            if price_m:
                price = f"TWD {price_m.group().replace(',', '')}"

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
            listing = spider._extract(resp.text, url)
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
    parser.add_argument("--limit", type=int, default=0, help="Max OIDs to scrape (0=all)")
    parser.add_argument("--backfill", action="store_true", help="Re-fetch stubs and extract data")
    parser.add_argument("--delay", type=float, default=0.5)
    args = parser.parse_args()
    if args.backfill:
        _backfill_cached(delay=args.delay)
    else:
        TaazeSpider(limit=args.limit, delay=args.delay).run()
