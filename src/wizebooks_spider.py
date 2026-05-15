import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider


class WizeBooksSpider(BaseSpider):
    """
    Wize Books Secondhand (secondhand.wizebooks.co.za) — South Africa main-universe.

    Secondhand books section of the Wize Books retail group.  Peer-to-peer and
    curated used-book listings.  Captures ISBNs, pricing, condition, and
    bibliographic metadata.

    httpx + BeautifulSoup (server-rendered).
    Browse paths probed at startup.  Pagination: WooCommerce /page/N/ then ?page=N.
    """

    BASE_URL = "https://secondhand.wizebooks.co.za"

    # Site uses /Product/Category/{slug}/{page}/{size} and /Product/Buy/{isbn}
    BROWSE_CANDIDATES = [
        "/Product/Category/school-books/1/26",
        "/Product/Category/south-africas-best-sellers/1/26",
        "/Product/Category/best-sellers-university-books/1/26",
    ]
    DETAIL_SIGNALS = ["/Product/Buy/", "/product/buy/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "en-ZA,en;q=0.9",
    }

    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Wize Books Secondhand", territory="South Africa")
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def _page_url(self, browse_url: str, pg_num: int) -> str:
        # Replace the page-number slot in /Product/Category/{slug}/{page}/{size}
        import re as _re
        new_url = _re.sub(r'(/Product/Category/[^/]+)/\d+(/\d+)', rf'\g<1>/{pg_num}\2', browse_url)
        if new_url != browse_url:
            return new_url
        # Fallback
        sep = "&" if "?" in browse_url else "?"
        return f"{browse_url}{sep}page={pg_num}"

    def run(self):
        self.logger.info(
            f"Starting Wize Books Secondhand harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            browse_url = self._find_browse_url()

            for pg_num in range(1, self.limit_pages + 1):
                urls_to_try = (
                    [self._page_url(browse_url, pg_num)]
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
    parser = argparse.ArgumentParser(description="Wize Books Secondhand South Africa cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    args = parser.parse_args()
    WizeBooksSpider(limit_pages=args.limit).run()
