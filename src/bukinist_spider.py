"""
Bukinist spider — Ukraine's used-book marketplace (www.bukinist.in.ua).

CakePHP SSR site (XHTML 1.0 Strict). Note: the bare domain times out;
use www.bukinist.in.ua throughout.

Site structure:
  - Latest-listing page: /books/last/1 (10 books, stateless — same 10 regardless of N)
  - Book pages: /books/view/{id}  (IDs are sequential, max ~56K)

Pagination via /books/last/N does not work statlessly — every page number
returns the same 10 most-recent books. We instead discover the current
max ID from /books/last/1, then iterate IDs downward, skipping 404s.

Each book page has title in a <b> tag, year+binding on the following line,
then labeled fields (Category, Rubric, Description), a seller link (/id{N}),
and price in UAH (грн).
"""
import re
import time
from bs4 import BeautifulSoup
import httpx
from models import BookListing
from base_spider import BaseSpider


BASE_URL = "https://www.bukinist.in.ua"


class BukinistSpider(BaseSpider):
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (X11; Linux x86_64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "uk-UA,uk;q=0.9,ru;q=0.8,en;q=0.7",
    }

    def __init__(self, delay: float = 0.3, max_id: int = 0, min_id: int = 1):
        super().__init__(platform_name="Bukinist", territory="Ukraine")
        self.delay = delay
        self.max_id = max_id  # 0 = auto-discover from /books/last/1
        self.min_id = min_id
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        max_id = self.max_id or self._discover_max_id()
        if not max_id:
            self.logger.error("Could not determine max book ID — aborting")
            return
        self.logger.info("Crawling IDs %d → %d", max_id, self.min_id)

        for book_id in range(max_id, self.min_id - 1, -1):
            url = f"{BASE_URL}/books/view/{book_id}"
            listing = self._fetch_book(url)
            if listing:
                self.save_item(listing)
            if book_id % 500 == 0:
                self.logger.info("id=%d  (total %d)", book_id, self.items_scraped)
            time.sleep(self.delay)

        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _discover_max_id(self) -> int:
        try:
            resp = self.client.get(f"{BASE_URL}/books/last/1")
            resp.raise_for_status()
        except Exception as e:
            self.logger.error("Could not fetch /books/last/1: %s", e)
            return 0
        soup = BeautifulSoup(resp.text, "html.parser")
        ids = []
        for a in soup.find_all("a", href=True):
            m = re.search(r"/books/view/(\d+)", a["href"])
            if m:
                ids.append(int(m.group(1)))
        max_id = max(ids) if ids else 0
        self.logger.info("Discovered max book ID: %d", max_id)
        return max_id

    def _fetch_book(self, book_url: str) -> BookListing | None:
        try:
            resp = self.client.get(book_url)
            if resp.status_code in (404, 410):
                return None
            resp.raise_for_status()
        except Exception as e:
            self.logger.warning("book fetch failed %s: %s", book_url, e)
            return None

        soup = BeautifulSoup(resp.text, "html.parser")
        return self._parse_book_page(soup, book_url)

    def _parse_book_page(self, soup: BeautifulSoup, book_url: str) -> BookListing | None:
        # Title is in the first <b> tag; clean internal whitespace
        title_el = soup.find("b")
        if not title_el:
            return None
        title = re.sub(r"\s+", " ", title_el.get_text()).strip()
        if not title:
            return None

        # Year and binding appear on the line immediately after the <b> tag:
        # "1977 binding type: hardcover."
        year = None
        binding = None
        next_text = ""
        for sibling in title_el.next_siblings:
            text = sibling.get_text() if hasattr(sibling, "get_text") else str(sibling)
            text = text.strip()
            if text:
                next_text = text
                break

        year_m = re.search(r"\b(1[89]\d{2}|20[012]\d)\b", next_text)
        if year_m:
            year = year_m.group(1)

        binding_m = re.search(r"binding type[:\s]+([^.\n]+)", next_text, re.IGNORECASE)
        if not binding_m:
            binding_m = re.search(r"палітурка[:\s]+([^.\n]+)", next_text, re.IGNORECASE)
        if binding_m:
            binding = binding_m.group(1).strip(" .") or None

        page_text = soup.get_text(separator="\n")
        category = self._extract_label(page_text, ["Category", "Категорія"])
        rubric = self._extract_label(page_text, ["Rubric", "Рубрика"])
        description = self._extract_label(page_text, ["Description", "Опис"])

        if rubric and not category:
            category = rubric
        elif rubric and category:
            category = f"{category} / {rubric}"

        price_m = re.search(r"(\d[\d\s,.']*(?:грн|UAH|₴))", page_text, re.IGNORECASE)
        price = price_m.group(1).strip() if price_m else None

        seller_id = None
        for a in soup.find_all("a", href=True):
            if re.search(r"/id\d+$", a["href"]):
                seller_id = a.get_text(strip=True) or None
                if seller_id:
                    break

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            publication_year=year,
            binding=binding,
            category=category,
            seller_comments=description,
            price=price,
            seller_id=seller_id,
            listing_url=book_url,
        )

    @staticmethod
    def _extract_label(text: str, labels: list[str]) -> str | None:
        for label in labels:
            m = re.search(rf"{re.escape(label)}\s*:\s*(.+)", text, re.IGNORECASE)
            if m:
                value = m.group(1).strip()
                value = re.split(r"\n\s*\n|\n[A-ZІЇЄА-Я][^:]{0,30}:", value)[0].strip()
                return value or None
        return None


def main():
    import argparse
    parser = argparse.ArgumentParser(description="Bukinist Ukraine used-book spider")
    parser.add_argument("--delay", type=float, default=0.3)
    parser.add_argument("--max-id", type=int, default=0,
                        help="Highest book ID to fetch (0 = auto-discover)")
    parser.add_argument("--min-id", type=int, default=1,
                        help="Lowest book ID to fetch")
    args = parser.parse_args()
    BukinistSpider(delay=args.delay, max_id=args.max_id, min_id=args.min_id).run()


if __name__ == "__main__":
    main()
