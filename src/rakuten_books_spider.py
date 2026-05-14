import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider


class RakutenBooksSpider(BaseSpider):
    """
    楽天ブックス (books.rakuten.co.jp) — Japan main-universe bookstore.

    Major national online bookstore with broad print-book depth and mainstream
    reach.  Captures ISBNs, pricing, and bibliographic metadata.

    httpx + BeautifulSoup (server-rendered catalog pages).
    Entry point: /book/ (all books listing).  Pagination: ?p=N.
    """

    BASE_URL = "https://books.rakuten.co.jp"

    # Start directly in the books section — /book/ is the canonical entry point
    BROWSE_CANDIDATES = [
        "/book/",
        "/book/search/",
        "/book/list/",
        "/books",
        "/search",
        "",
    ]
    DETAIL_SIGNALS = ["/book/", "/product/", "/item/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "ja-JP,ja;q=0.9,en;q=0.8",
    }

    def __init__(self, limit_pages=100):
        super().__init__(platform_name="楽天ブックス", territory="Japan")
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def run(self):
        self.logger.info(
            f"Starting 楽天ブックス harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            browse_url = self._find_browse_url()

            for pg_num in range(1, self.limit_pages + 1):
                if pg_num == 1:
                    urls_to_try = [browse_url]
                else:
                    sep = "&" if "?" in browse_url else "?"
                    urls_to_try = [
                        f"{browse_url}{sep}p={pg_num}",
                        f"{browse_url}{sep}page={pg_num}",
                    ]

                html, used_url = None, browse_url
                for candidate in urls_to_try:
                    try:
                        resp = self.client.get(candidate)
                        if resp.status_code == 200 and len(resp.text) > 500:
                            html, used_url = resp.text, candidate
                            break
                        if resp.status_code in (404, 410):
                            break
                    except Exception as e:
                        self.logger.debug(f"Fetch error for {candidate}: {e}")

                if not html:
                    self.logger.info(f"No content on page {pg_num} — done.")
                    break

                self.logger.info(f"Index page {pg_num}: {used_url}")
                soup = BeautifulSoup(html, "html.parser")
                book_links = self._extract_links(soup, seen)

                if not book_links:
                    self.logger.info(f"No new links on page {pg_num} — done.")
                    break

                self.logger.info(f"Found {len(book_links)} new links.")
                for link in book_links:
                    seen.add(link)
                    self._harvest_item(link)
                    time.sleep(0.7)

        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    def _find_browse_url(self) -> str:
        for path in self.BROWSE_CANDIDATES:
            candidate = self.BASE_URL + path
            try:
                resp = self.client.get(candidate)
                if resp.status_code == 200:
                    soup = BeautifulSoup(resp.text, "html.parser")
                    hrefs = [a.get("href", "") for a in soup.find_all("a", href=True)]
                    # Rakuten detail pages are like /book/XXXXXXXXXX/ (10+ digit ISBN-style)
                    if any(
                        re.search(r"/book/\d{10,}", h or "")
                        or any(sig in (h or "") for sig in ["/product/", "/item/"])
                        for h in hrefs
                    ):
                        self.logger.info(f"Browse URL confirmed: {candidate}")
                        return candidate
            except Exception as e:
                self.logger.debug(f"Candidate {path} failed: {e}")
        self.logger.warning("No browse path matched — using /book/.")
        return self.BASE_URL + "/book/"

    def _extract_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = urljoin(self.BASE_URL, a["href"])
            # Rakuten book detail pages: /book/<10+-digit-code>/
            if (
                self.BASE_URL in href
                and re.search(r"/book/\d{10,}", href)
                and href not in seen
            ):
                links.append(href)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        m = re.search(r"/book/(\d{10,})", url)
        item_id = m.group(1) if m else re.sub(
            r"[^a-zA-Z0-9_-]", "_",
            next((s for s in reversed(url.rstrip("/").split("/")) if s), str(int(time.time())))
        )[:80]

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
    parser = argparse.ArgumentParser(description="楽天ブックス Japan cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    args = parser.parse_args()
    RakutenBooksSpider(limit_pages=args.limit).run()
