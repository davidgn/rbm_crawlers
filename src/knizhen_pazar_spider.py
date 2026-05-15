"""
Knizhen pazar spider — Bulgaria's largest used-book marketplace (knizhen-pazar.net).

Rails-based app with server-rendered HTML.
Browse: /books/categories/{id}-{slug}?page=N (20 listings per page).
All data (title, author, price, condition) extracted from category listing tiles.
~1.9M listings as of May 2026.
"""
import argparse
import re
import time
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import httpx
from models import BookListing
from base_spider import BaseSpider


class KnizhenPazarSpider(BaseSpider):
    BASE_URL = "https://knizhen-pazar.net"
    # Any category page works as a seed to discover all category nav links
    CATEGORY_SEED = "/books/categories/2-balgarska-proza"
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "bg-BG,bg;q=0.9,en;q=0.8",
    }
    TILES_PER_PAGE = 20

    def __init__(self, delay: float = 0.3, max_pages: int = 20000):
        super().__init__(platform_name="KnizhenPazar", territory="Bulgaria")
        self.delay = delay
        self.max_pages = max_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        categories = self._discover_categories()
        if not categories:
            self.logger.error("No categories found — aborting")
            return
        self.logger.info("Found %d categories", len(categories))
        seen: set[str] = set()
        for cat_url, cat_name in categories:
            self._harvest_category(cat_url, cat_name, seen)
        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _discover_categories(self) -> list[tuple[str, str]]:
        try:
            resp = self.client.get(urljoin(self.BASE_URL, self.CATEGORY_SEED))
            resp.raise_for_status()
            soup = BeautifulSoup(resp.text, "html.parser")
            cats: list[tuple[str, str]] = []
            seen_urls: set[str] = set()
            for a in soup.find_all("a", href=True):
                href = a["href"]
                # Match /books/categories/{id}-{slug} — no sub-path after the slug
                if not re.search(r"/books/categories/\d+-[^/\s]+$", href):
                    continue
                url = href if href.startswith("http") else urljoin(self.BASE_URL, href)
                if url in seen_urls:
                    continue
                seen_urls.add(url)
                name = re.sub(r"\(\d[\d\s]*\)\s*$", "", a.get_text(strip=True)).strip()
                cats.append((url, name))
            return cats
        except Exception as e:
            self.logger.error("Category discovery failed: %s", e)
            return []

    def _harvest_category(self, base_url: str, cat_name: str, seen: set):
        for page_num in range(1, self.max_pages + 1):
            url = f"{base_url}?page={page_num}"
            try:
                resp = self.client.get(url)
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("Fetch error %s page %d: %s", cat_name, page_num, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            tiles = soup.select(".prl__item.t_product")
            if not tiles:
                if page_num == 1:
                    self.logger.debug("No tiles in category %s", cat_name)
                break

            new_count = 0
            for tile in tiles:
                link_el = tile.select_one(".prl__title a")
                if not link_el:
                    continue
                product_url = urljoin(self.BASE_URL, link_el.get("href", ""))
                if not product_url or product_url in seen:
                    continue
                seen.add(product_url)
                new_count += 1

                listing = self._listing_from_tile(tile, product_url, cat_name)
                if listing:
                    self.save_item(listing)

            self.logger.info(
                "Category %-35s page %5d: %2d new  (total %d)",
                cat_name[:35], page_num, new_count, self.items_scraped,
            )

            if len(tiles) < self.TILES_PER_PAGE:
                break

            time.sleep(self.delay)

    def _listing_from_tile(self, tile, url: str, cat_name: str) -> BookListing | None:
        link_el = tile.select_one(".prl__title a")
        title = link_el.get_text(strip=True) if link_el else None
        if not title:
            return None

        author_el = tile.select_one(".prl__author a")
        author = author_el.get_text(strip=True) if author_el else None
        # Skip if author text is a "from stand" indicator
        if author and ("щанд" in author.lower() or "stand" in author.lower()):
            author = None

        price_el = tile.select_one(".prl__price")
        price = price_el.get_text(strip=True) if price_el else None

        condition_el = tile.select_one(".prl__state span")
        condition = condition_el.get_text(strip=True) if condition_el else None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author or None,
            category=cat_name or None,
            condition=condition,
            price=price,
            listing_url=url,
        )


def _isbn10_to_isbn13(isbn10: str) -> str | None:
    """Convert an ISBN-10 to ISBN-13; return None if conversion fails."""
    digits = re.sub(r"\D", "", isbn10)
    if len(digits) == 10:
        digits = digits[:9]  # drop old check digit
    elif len(digits) == 9:
        pass  # already the root
    else:
        return None
    root = "978" + digits
    total = sum(int(d) * (1 if i % 2 == 0 else 3) for i, d in enumerate(root))
    check = (10 - (total % 10)) % 10
    return root + str(check)


def _extract_edition(soup) -> dict:
    """Parse the edition metadata row from a KnizhenPazar detail page."""
    result: dict = {}
    import re as _re
    for row in soup.find_all(class_=_re.compile(r"row|pair|attr")):
        text = row.get_text(" ", strip=True)
        if "Издателство" not in text and "Година" not in text:
            continue
        # publisher
        m = _re.search(r"Издателство\s+(.+?)(?:Град|Година|Език|Страници|$)", text)
        if m:
            result["publisher"] = m.group(1).strip()
        # year
        m = _re.search(r"Година\s+(\d{4})", text)
        if m:
            result["publication_year"] = m.group(1)
        # language
        m = _re.search(r"Език\s+(\S+)", text)
        if m:
            result["language"] = m.group(1).strip()
        # pages
        m = _re.search(r"Страници\s+(\d+)", text)
        if m:
            result["pages"] = m.group(1)
        # binding (Корици)
        m = _re.search(r"Корици\s+(\S+)", text)
        if m:
            result["binding"] = m.group(1).strip()
        # ISBN (may be 10-digit)
        m = _re.search(r"ISBN\s+([\dX]+)", text)
        if m:
            raw_isbn = m.group(1).strip()
            if _re.match(r"97[89]\d{10}$", raw_isbn):
                result["isbn"] = raw_isbn
            elif len(raw_isbn) in (9, 10):
                result["isbn"] = _isbn10_to_isbn13(raw_isbn)
        break  # first matching row is enough
    return result


def _backfill_detail_pages(delay: float = 0.3):
    """Fetch detail pages for existing KnizhenPazar records and enrich with edition data."""
    import json as _json
    import time as _time

    spider = KnizhenPazarSpider.__new__(KnizhenPazarSpider)
    BaseSpider.__init__(spider, "KnizhenPazar", "Bulgaria")
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

    print(f"Backfilling {len(existing)} KnizhenPazar detail pages…")
    client = httpx.Client(
        timeout=30.0, follow_redirects=True,
        headers={"User-Agent": "Mozilla/5.0 Chrome/124", "Accept-Language": "bg-BG,bg;q=0.9,en;q=0.8"}
    )
    updated = 0
    for i, (url, rec) in enumerate(existing.items(), 1):
        if not url.startswith("https://knizhen-pazar.net/products/books/"):
            continue
        try:
            resp = client.get(url)
            if resp.status_code != 200:
                continue
            soup = BeautifulSoup(resp.text, "html.parser")
            edition = _extract_edition(soup)
            if edition:
                rec.update({k: v for k, v in edition.items() if v and not rec.get(k)})
                updated += 1
        except Exception as e:
            print(f"  Error {url}: {e}")
        if i % 100 == 0:
            print(f"  {i}/{len(existing)} processed, {updated} enriched")
        _time.sleep(delay)

    tmp = data_file.with_suffix(".jsonl.tmp")
    with tmp.open("w", encoding="utf-8") as fh:
        for record in existing.values():
            fh.write(_json.dumps(record) + "\n")
    tmp.replace(data_file)
    print(f"Done. Enriched {updated}/{len(existing)} records.")


def main():
    parser = argparse.ArgumentParser(description="Knizhen Pazar Bulgaria HTML spider")
    parser.add_argument(
        "--delay", type=float, default=0.3,
        help="Seconds between page requests",
    )
    parser.add_argument(
        "--max-pages", type=int, default=20000,
        help="Max pages per category",
    )
    parser.add_argument(
        "--backfill", action="store_true",
        help="Enrich existing records with detail-page edition data",
    )
    args = parser.parse_args()
    if args.backfill:
        _backfill_detail_pages(delay=args.delay)
    else:
        KnizhenPazarSpider(delay=args.delay, max_pages=args.max_pages).run()


if __name__ == "__main__":
    main()
