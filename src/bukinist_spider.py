"""
Bukinist spider — Ukraine's used-book marketplace (www.bukinist.in.ua).

CakePHP SSR site (XHTML 1.0 Strict). Note: the bare domain times out;
use www.bukinist.in.ua throughout.

Site structure:
  - Listing pages: /books/last/{N}  (10 books per page, N starts at 1)
  - Book pages: /books/view/{id}
  - ~56K books historically, active subset unknown

Each book page has title+year+binding in a <b> tag, then labeled fields
(Category, Rubric, Place of origin, Description), a seller link (/id{N}),
and price in UAH (грн).
"""
import re
import time
from bs4 import BeautifulSoup
import httpx
from models import BookListing
from base_spider import BaseSpider


BASE_URL = "https://www.bukinist.in.ua"
ITEMS_PER_PAGE = 10


class BukinistSpider(BaseSpider):
    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (X11; Linux x86_64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "uk-UA,uk;q=0.9,ru;q=0.8,en;q=0.7",
    }

    def __init__(self, delay: float = 0.5, max_pages: int = 6000):
        super().__init__(platform_name="Bukinist", territory="Ukraine")
        self.delay = delay
        self.max_pages = max_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        seen: set[str] = set()
        for page_num in range(1, self.max_pages + 1):
            url = f"{BASE_URL}/books/last/{page_num}"
            try:
                resp = self.client.get(url)
                if resp.status_code in (404, 410):
                    break
                resp.raise_for_status()
            except Exception as e:
                self.logger.error("page=%d error: %s", page_num, e)
                break

            soup = BeautifulSoup(resp.text, "html.parser")
            book_links = self._extract_book_links(soup)
            if not book_links:
                self.logger.info("page=%d: no books — done", page_num)
                break

            new_count = 0
            for link in book_links:
                if link in seen:
                    continue
                seen.add(link)
                new_count += 1
                listing = self._fetch_book(link)
                if listing:
                    self.save_item(listing)
                time.sleep(self.delay)

            self.logger.info("page %4d: %2d new  (total %d)", page_num, new_count, self.items_scraped)
            if len(book_links) < ITEMS_PER_PAGE:
                break

        self.client.close()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    def _extract_book_links(self, soup: BeautifulSoup) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = a["href"]
            if re.search(r"/books/view/\d+", href):
                full = href if href.startswith("http") else BASE_URL + href
                links.append(full)
        return list(dict.fromkeys(links))

    def _fetch_book(self, book_url: str) -> BookListing | None:
        try:
            resp = self.client.get(book_url)
            resp.raise_for_status()
        except Exception as e:
            self.logger.warning("book fetch failed %s: %s", book_url, e)
            return None

        soup = BeautifulSoup(resp.text, "html.parser")
        return self._parse_book_page(soup, book_url)

    def _parse_book_page(self, soup: BeautifulSoup, book_url: str) -> BookListing | None:
        # Title is in the first <b> tag in the main content area.
        # Format: "Author Title Year binding type: Type."
        title_el = soup.find("b")
        if not title_el:
            return None
        raw_title = title_el.get_text(strip=True)
        if not raw_title:
            return None

        # Peel year and binding from the end of the raw title line.
        # Pattern: "...Title YYYY binding type: Тип."
        year = None
        binding = None
        title = raw_title

        year_m = re.search(r"\b(1[89]\d{2}|20[012]\d)\b", raw_title)
        if year_m:
            year = year_m.group(1)
            title = raw_title[:year_m.start()].strip(" ,.")

        binding_m = re.search(r"binding type[:\s]+([^.]+)", raw_title, re.IGNORECASE)
        if not binding_m:
            # Ukrainian label
            binding_m = re.search(r"палітурка[:\s]+([^.]+)", raw_title, re.IGNORECASE)
        if binding_m:
            binding = binding_m.group(1).strip(" .") or None

        # Labeled fields are plain text nodes in the page, e.g.:
        # "Category: Book, journal, almanac"
        # "Rubric: Biographies, memoirs"
        # "Place of origin: Азія"
        # "Description: ..."
        page_text = soup.get_text(separator="\n")
        category = self._extract_label(page_text, ["Category", "Категорія"])
        rubric = self._extract_label(page_text, ["Rubric", "Рубрика"])
        description = self._extract_label(page_text, ["Description", "Опис"])

        # Combine rubric into category if no category
        if rubric and not category:
            category = rubric
        elif rubric and category:
            category = f"{category} / {rubric}"

        # Price: look for pattern like "50,00 грн" or "50.00 UAH"
        price_m = re.search(r"(\d[\d\s,.']*(?:грн|UAH|₴))", page_text, re.IGNORECASE)
        price = price_m.group(1).strip() if price_m else None

        # Seller: link matching /id\d+
        seller_id = None
        for a in soup.find_all("a", href=True):
            if re.match(r"^/id\d+$", a["href"]) or re.match(r".*/id\d+$", a["href"]):
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
                # Trim at next label-like line or blank line
                value = re.split(r"\n\s*\n|\n[A-ZІЇЄА-Я][^:]{0,30}:", value)[0].strip()
                return value or None
        return None


def main():
    import argparse
    parser = argparse.ArgumentParser(description="Bukinist Ukraine used-book spider")
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--max-pages", type=int, default=6000)
    args = parser.parse_args()
    BukinistSpider(delay=args.delay, max_pages=args.max_pages).run()


if __name__ == "__main__":
    main()
