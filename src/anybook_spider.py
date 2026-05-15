import re
import time
import httpx
from bs4 import BeautifulSoup
from types import SimpleNamespace
from base_spider import BaseSpider
from models import BookListing

CONFIG = SimpleNamespace(platform_name="Anybook", territory="United Kingdom")


BASE_URL = "https://www.anybook.com"
SEARCH_URL = BASE_URL + "/advancedsearch.php?keywords=fiction&mode=smart&submit=Search"
HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124.0.0.0 Safari/537.36",
    "Accept-Language": "en-GB,en;q=0.9",
}


class AnybookSpider(BaseSpider):
    def __init__(self, limit_pages: int = 3, limit_items: int = 50):
        super().__init__("Anybook", "United Kingdom")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = httpx.Client(
            headers=HEADERS,
            follow_redirects=True,
            timeout=httpx.Timeout(25.0, connect=8.0, read=15.0),
        )

    def run(self):
        try:
            for page in range(1, self.limit_pages + 1):
                if self.items_scraped >= self.limit_items:
                    break
                url = f"{SEARCH_URL}&page={page}"
                resp = self.client.get(url)
                if resp.status_code != 200:
                    break
                html = resp.text
                self.cache_html(f"index_page_{page}", html, url=url)
                count = self._parse_page(html, url)
                if count == 0:
                    break
                time.sleep(0.5)
        finally:
            self.client.close()

    def _parse_page(self, html: str, page_url: str) -> int:
        soup = BeautifulSoup(html, "html.parser")
        items = soup.find_all("div", class_="accordion-item")
        count = 0
        for item in items:
            if self.items_scraped >= self.limit_items:
                break
            listing = self._extract(item, page_url)
            if listing:
                self.save_item(listing)
                count += 1
        return count

    def _extract(self, item, page_url: str) -> BookListing | None:
        ai_div = item.find(class_="ai-description-collapse")
        if not ai_div:
            return None
        title = ai_div.get("data-title", "").strip()
        if not title:
            return None
        author = ai_div.get("data-author", "").strip() or None
        isbn = ai_div.get("data-isbn", "").strip() or None

        price_raw = item.get("data-price", "").strip()
        price = f"£{price_raw}" if price_raw else None

        share = item.find(class_="share-book")
        book_num = share.get("data-book-number", "").strip() if share else ""

        body_p = item.find("div", class_="accordion-body")
        publisher = year = condition = None
        if body_p:
            text = body_p.find("p")
            if text:
                raw = text.get_text(" | ", strip=True)
                # format: "condition text | Publisher | YYYY | weight"
                parts = [p.strip() for p in raw.split("|")]
                if len(parts) >= 3:
                    condition = parts[0] or None
                    publisher = parts[1] if not re.match(r"^\d{4}$", parts[1]) else None
                    for p in parts:
                        if re.match(r"^\d{4}$", p):
                            year = p
                            break

        listing_url = f"{page_url}#{book_num}" if book_num else page_url
        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=year,
            condition=condition,
            price=price,
            listing_url=listing_url,
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=3)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()
    spider = AnybookSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
    print(f"Done. {spider.items_scraped} items scraped.")
