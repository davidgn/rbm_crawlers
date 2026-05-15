import argparse
import json
import re
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider
from isbn_utils import normalize_isbn


class TikiSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Tiki.vn", territory="Vietnam")
        self.limit_pages = limit_pages
        self.category_ids = [320, 316, 7741, 18328]

    def run(self):
        self.logger.info("Starting Tiki harvest. limit_pages=%s", self.limit_pages)
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            try:
                page.goto("https://tiki.vn", timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(3000)
                for cat_id in self.category_ids:
                    self.logger.info("Category: %s", cat_id)
                    for current_page in range(1, self.limit_pages + 1):
                        list_res = page.evaluate(f'''async () => {{
                            try {{
                                const res = await fetch("https://tiki.vn/api/v2/products?limit=40&category={cat_id}&page={current_page}");
                                return await res.json();
                            }} catch(e) {{ return null; }}
                        }}''')
                        if not list_res or not list_res.get("data"):
                            break
                        for prod in list_res["data"]:
                            pid = prod.get("id")
                            if not pid:
                                continue
                            detail_text = page.evaluate(f'''async () => {{
                                try {{
                                    const res = await fetch("https://tiki.vn/api/v2/products/{pid}");
                                    return await res.text();
                                }} catch(e) {{ return null; }}
                            }}''')
                            if detail_text:
                                self.cache_html(str(pid), detail_text,
                                                url=f"https://tiki.vn/product-p{pid}.html")
                                listing = self._extract(detail_text, pid)
                                if listing:
                                    self.save_item(listing)
                        page.wait_for_timeout(1000)
            except Exception as e:
                self.logger.error("Crawl failed: %s", e)
            finally:
                browser.close()
        self.logger.info("Done. %d items", self.items_scraped)

    def _extract(self, json_text: str, pid) -> BookListing | None:
        try:
            data = json.loads(json_text)
        except Exception:
            return None
        name = data.get("name", "").strip()
        if not name:
            return None

        # authors
        authors_raw = data.get("authors") or []
        author_names = [a["name"] for a in authors_raw if isinstance(a, dict) and a.get("name")]
        author_names = [a for a in author_names if a.lower() not in ("many authors", "nhiều tác giả")]
        author = ", ".join(author_names) or None

        # specifications
        specs: dict[str, str] = {}
        for group in data.get("specifications") or []:
            for attr in group.get("attributes") or []:
                specs[attr.get("code", "")] = attr.get("value", "")

        isbn = normalize_isbn(specs.get("isbn13") or specs.get("isbn") or "")

        # also scan description fields for ISBN patterns
        if not isbn:
            for field in ("short_description", "description"):
                text = data.get(field) or ""
                m = re.search(r"(?i)ISBN[:\s-]*([0-9X][\d\s-]{8,17})", text)
                if m:
                    isbn = normalize_isbn(m.group(1))
                if isbn:
                    break
        if not isbn:
            for field in ("short_description", "description"):
                m = re.search(r"\b97[89]\d{10}\b", data.get(field) or "")
                if m:
                    isbn = normalize_isbn(m.group(0))
                if isbn:
                    break

        publisher = specs.get("publisher_vn") or specs.get("manufacturer") or None
        binding = specs.get("book_cover") or None
        pages = specs.get("number_of_page") or None
        pub_date = specs.get("publication_date") or ""
        year = re.match(r"(\d{4})", pub_date).group(1) if re.match(r"\d{4}", pub_date) else None

        price_raw = data.get("price") or data.get("original_price")
        price = f"{price_raw} VND" if price_raw else None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=name,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=year,
            binding=binding,
            pages=pages,
            price=price,
            listing_url=f"https://tiki.vn/product-p{pid}.html",
        )


def _backfill_cached():
    import json as _json
    from pathlib import Path

    spider = TikiSpider.__new__(TikiSpider)
    BaseSpider.__init__(spider, "Tiki.vn", "Vietnam")

    cache_dir = spider.cache_dir
    data_file = spider.output_file

    html_files = [f for f in cache_dir.glob("*.html") if not f.stem.startswith("index")]
    print(f"Backfilling {len(html_files)} cached Tiki pages…")

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

    updated = 0
    for html_file in html_files:
        pid = html_file.stem
        url = f"https://tiki.vn/product-p{pid}.html"
        json_text = html_file.read_text(encoding="utf-8", errors="ignore")
        listing = spider._extract(json_text, pid)
        if listing:
            existing[url] = listing.to_dict()
            updated += 1

    tmp = data_file.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for record in existing.values():
            fh.write(_json.dumps(record) + "\n")
    tmp.replace(data_file)
    print(f"Updated {updated} records. Total: {len(existing)}")


def _enrich_isbn():
    """Re-fetch via API for all JSONL records that are missing an ISBN."""
    import json as _json
    import time as _time
    import httpx as _httpx

    spider = TikiSpider.__new__(TikiSpider)
    BaseSpider.__init__(spider, "Tiki.vn", "Vietnam")
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

    missing = [(url, rec) for url, rec in existing.items() if not rec.get("isbn")]
    print(f"Fetching ISBN for {len(missing)} records missing ISBN…")

    client = _httpx.Client(
        headers={"User-Agent": "Mozilla/5.0 Chrome/124", "Accept": "application/json"},
        timeout=8, follow_redirects=True,
    )
    enriched = 0
    for i, (url, rec) in enumerate(missing, 1):
        pid = url.split("-p")[-1].replace(".html", "").split("?")[0]
        if not pid.isdigit():
            continue
        try:
            resp = client.get(f"https://tiki.vn/api/v2/products/{pid}")
            if resp.status_code != 200:
                continue
            listing = spider._extract(resp.text, pid)
            if listing and listing.isbn:
                rec["isbn"] = listing.isbn
                enriched += 1
        except Exception as e:
            print(f"  Error {url}: {e}")
        if i % 500 == 0:
            print(f"  {i}/{len(missing)} processed, {enriched} enriched")
        _time.sleep(0.3)

    tmp = data_file.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for record in existing.values():
            fh.write(_json.dumps(record) + "\n")
    tmp.replace(data_file)
    print(f"Done. Enriched {enriched}/{len(missing)} with ISBN.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=50)
    parser.add_argument("--limit-items", type=int, default=200)
    parser.add_argument("--backfill", action="store_true")
    parser.add_argument("--enrich-isbn", action="store_true", help="Re-fetch API for records missing ISBN")
    args = parser.parse_args()
    if args.backfill:
        _backfill_cached()
    elif args.enrich_isbn:
        _enrich_isbn()
    else:
        TikiSpider(limit_pages=args.limit_pages).run()
