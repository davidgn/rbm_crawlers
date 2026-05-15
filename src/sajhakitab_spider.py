import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider


class SajhaKitabSpider(BaseSpider):
    """
    Sajha Kitab (sajhakitab.com) — Nepal used-book classifieds marketplace.

    Server-rendered WP classifieds site. Books are in cat_id=515.
    Pagination: /search-results/page/N/?cat_id=515
    Detail URLs: /ad/SLUG
    """

    BASE_URL = "https://sajhakitab.com"
    BROWSE_BASE = "/search-results/?cat_id=515"
    DETAIL_SIGNALS = ["/ad/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "ne-NP,ne;q=0.9,en;q=0.8",
    }

    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Sajha Kitab", territory="Nepal")
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def run(self):
        self.logger.info(
            f"Starting Sajha Kitab harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            for pg_num in range(1, self.limit_pages + 1):
                if pg_num == 1:
                    url = self.BASE_URL + self.BROWSE_BASE
                else:
                    url = f"{self.BASE_URL}/search-results/page/{pg_num}/?cat_id=515"

                try:
                    resp = self.client.get(url)
                    if resp.status_code in (404, 410) or len(resp.text) < 500:
                        self.logger.info(f"Page {pg_num} empty/missing — done.")
                        break
                except Exception as e:
                    self.logger.error(f"Page {pg_num} fetch error: {e}")
                    break

                self.logger.info(f"Index page {pg_num}: {url}")
                soup = BeautifulSoup(resp.text, "html.parser")
                book_links = self._extract_links(soup, seen)

                if not book_links:
                    self.logger.info(f"No new links on page {pg_num} — done.")
                    break

                self.logger.info(f"Found {len(book_links)} new links.")
                for link in book_links:
                    seen.add(link)
                    self._harvest_item(link)
                    time.sleep(0.5)

        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    def _extract_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = urljoin(self.BASE_URL, a["href"])
            if (
                self.BASE_URL in href
                and any(sig in href for sig in self.DETAIL_SIGNALS)
                and href not in seen
            ):
                links.append(href)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        slug = next(
            (s for s in reversed(url.rstrip("/").split("/")) if s and s != "#"),
            str(int(time.time()))
        )
        item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", slug)[:80]

        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self.client.get(url)
            if resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response ({resp.status_code}) for {url}")
                return

            self.cache_html(item_id, resp.text, url=url)

            soup = BeautifulSoup(resp.text, "html.parser")
            h1 = soup.find("h1")
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
    parser = argparse.ArgumentParser(description="Sajha Kitab Nepal cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    args = parser.parse_args()
    SajhaKitabSpider(limit_pages=args.limit).run()
