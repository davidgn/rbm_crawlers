"""
日本の古本屋 spider — Japan national antiquarian book marketplace (kosho.or.jp).

Operated by the Japan Antiquarian Booksellers Association (全国古書籍商組合連合会).
~3M listings across thousands of member dealers.

Browse: EC-Cube search with search_word='本' (most comprehensive single-term
search covering the full stock), paginated via search_pageno=N.
50 listings per page; price, seller, author/publisher info in tile.
"""
import argparse
import re
import time
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import httpx
from models import BookListing
from base_spider import BaseSpider


# Search terms that together cover the Japanese antiquarian catalog.
# '本' (hon = book) is the most comprehensive; others fill in gaps.
SEARCH_TERMS = ["本", "小説", "文学", "歴史", "科学", "哲学", "芸術", "語学"]
ITEMS_PER_PAGE = 50


class NihonFuruhonSpider(BaseSpider):
    BASE_URL = "https://www.kosho.or.jp"
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "ja-JP,ja;q=0.9,en;q=0.5",
    }

    def __init__(self, delay: float = 0.5, max_pages_per_term: int = 60000):
        super().__init__(platform_name="NihonFuruhon", territory="Japan")
        self.delay = delay
        self.max_pages_per_term = max_pages_per_term
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        seen: set[str] = set()
        for term in SEARCH_TERMS:
            self.logger.info("Searching for: %s", term)
            self._harvest_term(term, seen)
        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _harvest_term(self, term: str, seen: set):
        for page_num in range(1, self.max_pages_per_term + 1):
            params = {
                "mode": "search",
                "search_only_has_stock": "1",
                "search_word": term,
                "search_pageno": str(page_num),
                "search_orderby": "11",  # newest first
            }
            try:
                resp = self.client.get(
                    f"{self.BASE_URL}/products/list.php", params=params
                )
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("term=%s page=%d error: %s", term, page_num, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            undercolumn = soup.select_one("#undercolumn")
            if not undercolumn or "count_zero" in undercolumn.get("class", []):
                self.logger.info("term=%s page=%d: no results — done", term, page_num)
                break

            items = undercolumn.select("div.search_result_list")
            if not items:
                break

            new_count = 0
            for item in items:
                title_el = item.select_one("p.book_title a")
                if not title_el:
                    continue
                rel_url = title_el.get("href", "")
                product_url = rel_url if rel_url.startswith("http") else urljoin(self.BASE_URL, rel_url)
                if product_url in seen:
                    continue
                seen.add(product_url)
                new_count += 1

                listing = self._listing_from_item(item, product_url)
                if listing:
                    self.save_item(listing)

            self.logger.info(
                "term=%-4s page %5d: %2d new  (total %d)",
                term, page_num, new_count, self.items_scraped,
            )
            if len(items) < ITEMS_PER_PAGE:
                break
            time.sleep(self.delay)

    def _listing_from_item(self, item, url: str) -> BookListing | None:
        title_el = item.select_one("p.book_title a")
        title = title_el.get_text(strip=True) if title_el else None
        if not title:
            return None

        # Price: <strong class="red t-large">￥<span class="price">700</span></strong>
        price_el = item.select_one("span.price")
        price = f"¥{price_el.get_text(strip=True)}" if price_el else None

        # Author/publisher/dimensions line: "著者名 著、出版社、20cm"
        # Also handles bare "著者名、出版社、pages" without explicit 著 marker.
        author = None
        publisher = None
        info_divs = item.select("div.dot_border")
        for div in info_divs:
            text = div.get_text(" ", strip=True)
            # Skip the seller info div (has baseinfo class inside)
            if div.select_one(".baseinfo"):
                continue
            parts = [p.strip() for p in text.split("、") if p.strip()]
            if not parts:
                continue
            # Explicit 著/編 marker path
            for i, part in enumerate(parts):
                if re.search(r"[著編]$", part) and not author:
                    author = re.sub(r"\s*[著編]$", "", part).strip() or None
                elif author and not publisher and not re.match(r"^[\d\s]+[pcmP]", part):
                    publisher = part or None
            # Fallback: "Name、Publisher、digits" — last part purely numeric or page count
            if not author and len(parts) >= 2 and re.match(r"^\d+", parts[-1]):
                author = parts[0] or None
                if len(parts) >= 3:
                    publisher = parts[1] or None

        # Seller/location from baseinfo
        seller_el = item.select_one(".baseinfo a")
        seller_name = seller_el.get_text(strip=True) if seller_el else None

        # Condition: last text div (no special class)
        condition = None
        for div in item.find_all("div", recursive=True):
            if not div.get("class") and div.get_text(strip=True):
                txt = div.get_text(strip=True)
                if len(txt) > 5 and txt != title:
                    condition = txt
                    break

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            publisher=publisher,
            condition=condition,
            price=price,
            listing_url=url,
            seller_id=seller_name,
        )


def main():
    parser = argparse.ArgumentParser(description="日本の古本屋 (kosho.or.jp) spider")
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--max-pages", type=int, default=60000,
                        help="Max pages per search term")
    args = parser.parse_args()
    NihonFuruhonSpider(delay=args.delay, max_pages_per_term=args.max_pages).run()


if __name__ == "__main__":
    main()
