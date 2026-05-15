import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider
from isbn_utils import normalize_isbn


class KitabainSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Kitabain", territory="Pakistan")
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)
        self.categories = [
            {"name": "All Books", "url": "https://www.kitabain.com/books/all"},
            {"name": "English Literature", "url": "https://www.kitabain.com/books/english-literature"},
            {"name": "Urdu Books", "url": "https://www.kitabain.com/books/Urdu-Books"},
            {"name": "Other Language", "url": "https://www.kitabain.com/books/Other-Language"},
        ]

    def run(self):
        self.logger.info("Starting Kitabain harvest. limit_pages=%s", self.limit_pages)
        for cat in self.categories:
            self.logger.info("Category: %s", cat["name"])
            for page in range(1, self.limit_pages + 1):
                url = f"{cat['url']}?page={page}"
                try:
                    response = self.client.get(url)
                    if response.status_code == 500:
                        continue
                    response.raise_for_status()
                except Exception as e:
                    self.logger.error("Failed %s: %s", url, e)
                    break
                soup = BeautifulSoup(response.text, "html.parser")
                items = soup.find_all("div", class_="bookimgdiv")
                if not items:
                    break
                for item in items:
                    try:
                        self._harvest_item(item, cat["name"])
                    except Exception as e:
                        self.logger.error("Item error: %s", e)
                time.sleep(1)
        self.logger.info("Done. %d items", self.items_scraped)

    def _harvest_item(self, div, category_label):
        title_a = div.find("p").find("a") if div.find("p") else None
        if not title_a:
            return
        title = title_a.text.strip()
        listing_url = title_a.get("href", "")
        if listing_url.startswith("/"):
            listing_url = "https://www.kitabain.com" + listing_url
        item_id = listing_url.split("-")[-1] if "-" in listing_url else str(time.time())

        try:
            resp = self.client.get(listing_url)
            if resp.status_code != 200:
                return
            self.cache_html(item_id, resp.text, url=listing_url)
            listing = self._extract(resp.text, title, listing_url, category_label)
            self.save_item(listing)
        except Exception as e:
            self.logger.error("Fetch error %s: %s", listing_url, e)

    def _extract(self, html: str, title: str, url: str, category: str) -> BookListing:
        soup = BeautifulSoup(html, "html.parser")
        fields: dict[str, str] = {}
        desc = soup.find("ul", class_="bookdesc-list")
        if desc:
            for li in desc.find_all("li"):
                hdr = li.find("span", class_="bookdhead")
                if not hdr:
                    continue
                key = hdr.get_text(strip=True).rstrip(":")
                val = li.get_text(separator=" ", strip=True)
                val = val.replace(hdr.get_text(strip=True), "", 1).strip()
                fields[key] = val

        price_input = soup.find("input", {"name": "bookprice"})
        price_raw = price_input["value"] if price_input else fields.get("Price", "")
        price = f"Rs {price_raw}" if price_raw and not price_raw.startswith("Rs") else price_raw or None

        isbn = normalize_isbn(fields.get("ISBN", ""))

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=fields.get("Book Name") or title,
            author=fields.get("By") or None,
            isbn=isbn,
            publisher=fields.get("Publication Type") or None,
            pages=fields.get("No Of Pages") or None,
            category=category,
            condition=fields.get("Condition") or None,
            price=price,
            listing_url=url,
        )


def _backfill_cached():
    """Re-extract all cached Kitabain HTML pages to enrich existing records."""
    import json
    from pathlib import Path

    spider = KitabainSpider.__new__(KitabainSpider)
    BaseSpider.__init__(spider, "Kitabain", "Pakistan")

    cache_dir = spider.cache_dir
    data_file = spider.output_file

    if not cache_dir.exists():
        print("No cache dir found.")
        return

    # build index of cached pages (non-index files)
    html_files = [f for f in cache_dir.glob("*.html") if not f.stem.startswith("index")]
    print(f"Backfilling {len(html_files)} cached Kitabain pages…")

    # load existing records keyed by listing_url
    existing: dict[str, dict] = {}
    if data_file.exists():
        with data_file.open(encoding="utf-8") as fh:
            for line in fh:
                line = line.strip()
                if not line:
                    continue
                try:
                    d = json.loads(line)
                    existing[d.get("listing_url", "")] = d
                except Exception:
                    pass

    # build index: item_id (last number in URL) → record
    id_to_record: dict[str, dict] = {}
    for rec in existing.values():
        url = rec.get("listing_url", "")
        item_id = url.rstrip("/").rsplit("-", 1)[-1] if "-" in url else ""
        if item_id.isdigit():
            id_to_record[item_id] = rec

    updated = 0
    for html_file in html_files:
        item_id = html_file.stem
        old = id_to_record.get(item_id, {})
        url = old.get("listing_url", f"https://www.kitabain.com/booksdetail/{item_id}")
        html = html_file.read_text(encoding="utf-8", errors="ignore")
        listing = spider._extract(html, old.get("title", ""), url, old.get("category", ""))
        existing[url] = listing.to_dict()
        updated += 1

    tmp = data_file.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for record in existing.values():
            fh.write(json.dumps(record) + "\n")
    tmp.replace(data_file)
    print(f"Updated {updated} records. Total: {len(existing)}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=10)
    parser.add_argument("--limit-items", type=int, default=50)
    parser.add_argument("--backfill", action="store_true", help="Re-extract all cached pages")
    args = parser.parse_args()
    if args.backfill:
        _backfill_cached()
    else:
        spider = KitabainSpider(limit_pages=args.limit_pages)
        spider.run()
