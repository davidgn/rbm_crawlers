import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider


class Qiqi788Spider(BaseSpider):
    """
    7788旧书 (7788js.7788.com) — China mainland main-universe used/collecting book marketplace.

    Specialist old/used-book collecting, appraisal, auction, and retail platform under
    the 7788 collecting network.  Multi-mode trading including negotiated orders.
    Captures ISBNs, pricing, condition, and bibliographic metadata.

    httpx + BeautifulSoup (server-rendered).
    Browse: homepage and category listings.  Pagination: ?page=N.
    """

    BASE_URL = "https://7788js.7788.com"

    BROWSE_CANDIDATES = [
        "/list/",
        "/category/",
        "/shop/",
        "/goods/",
        "",
    ]
    DETAIL_SIGNALS = ["/product/", "/goods/", "/show/", "/item/", "/detail/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8",
    }

    def __init__(self, limit_pages=100):
        super().__init__(platform_name="7788旧书", territory="China (mainland)")
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def run(self):
        self.logger.info(
            f"Starting 7788旧书 harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            browse_url = self._find_browse_url()

            for pg_num in range(1, self.limit_pages + 1):
                urls_to_try = (
                    [
                        f"{browse_url}{'&' if '?' in browse_url else '?'}page={pg_num}",
                        f"{browse_url.rstrip('/')}/page/{pg_num}/",
                    ]
                    if pg_num > 1
                    else [browse_url]
                )

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
                    if any(sig in (h or "") for h in hrefs for sig in self.DETAIL_SIGNALS):
                        self.logger.info(f"Browse URL confirmed: {candidate}")
                        return candidate
            except Exception as e:
                self.logger.debug(f"Candidate {path} failed: {e}")
        self.logger.warning("No browse path matched — using homepage.")
        return self.BASE_URL

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
    parser = argparse.ArgumentParser(description="7788旧书 China cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    args = parser.parse_args()
    Qiqi788Spider(limit_pages=args.limit).run()
