import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider


class Yes24Spider(BaseSpider):
    """
    YES24 (yes24.com) — South Korea main-universe bookstore with 중고샵 (used-book shop).

    YES24 is one of South Korea's three dominant online-book retailers and
    operates an explicit used-book (중고) section.  Listing pages are
    server-rendered; httpx + BeautifulSoup is sufficient.

    Used-book listing URL:
      https://www.yes24.com/Product/Search
        ?CategoryNumber=001&SearchTarget=Used&Query=&SortType=New&PageNumber=N

    Detail URL pattern:
      https://www.yes24.com/Product/Goods/XXXXXXXX

    Category sweep: all used books (CategoryNumber=001), then foreign books
    (CategoryNumber=002) to maximise English-language coverage.
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

    def __init__(self, limit_pages=100):
        super().__init__(platform_name="YES24", territory="South Korea")
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def run(self):
        self.logger.info(
            f"Starting YES24 harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            for cat in self.CATEGORIES:
                self.logger.info(f"=== Category: {cat['name']} ===")
                for pg_num in range(1, self.limit_pages + 1):
                    url = self.LIST_URL.format(cat=cat["cat"], page=pg_num)
                    self.logger.info(f"Listing page {pg_num}: {url}")

                    try:
                        resp = self.client.get(url)
                        resp.raise_for_status()
                    except Exception as e:
                        self.logger.error(f"Listing fetch failed: {e}")
                        break

                    soup = BeautifulSoup(resp.text, "html.parser")
                    detail_links = self._extract_detail_links(soup, seen)

                    if not detail_links:
                        self.logger.info(f"No new listings on page {pg_num} — done with category.")
                        break

                    self.logger.info(f"Found {len(detail_links)} new listings.")
                    for link in detail_links:
                        seen.add(link)
                        self._harvest_item(link)
                        time.sleep(0.6)

        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    def _extract_detail_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = a["href"]
            # Detail pages: /Product/Goods/XXXXXXXX
            if re.search(r"/Product/Goods/\d+", href):
                full = urljoin(self.BASE_URL, href)
                if full not in seen:
                    links.append(full)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        m = re.search(r"/Goods/(\d+)", url)
        item_id = m.group(1) if m else re.sub(r"[^a-zA-Z0-9_-]", "_", url)[-60:]

        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self.client.get(url)
            if resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response ({resp.status_code}) for {url}")
                return

            self.cache_html(item_id, resp.text, url=url)

            soup = BeautifulSoup(resp.text, "html.parser")
            h1 = soup.find("h1") or soup.find("h2", class_=re.compile(r"title|gds_name", re.I))
            title = h1.get_text(strip=True) if h1 else "Cached Item"

            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                listing_url=url,
                condition="Cached for AI extraction",
            ))
        except Exception as e:
            self.logger.error(f"Error harvesting {url}: {e}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="YES24 (South Korea) cache-first spider")
    parser.add_argument("--limit", type=int, default=100,
                        help="Max listing pages per category (default: 100)")
    args = parser.parse_args()
    Yes24Spider(limit_pages=args.limit).run()
