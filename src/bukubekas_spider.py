import argparse
import re
import time
from urllib.parse import urljoin
import httpx
from bs4 import BeautifulSoup
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider


class BukubekasSpider(BaseSpider):
    """
    Bukubekas.id — Indonesia main-universe used-book marketplace.

    "Buku bekas" = secondhand/used books (Indonesian). Bukubekas.id is a
    book-specific secondhand marketplace with public buy/sell listings.

    Strategy: httpx + BeautifulSoup first (Indonesian marketplaces are often
    accessible without JavaScript). If the initial fetch returns a thin/empty
    page, Playwright is used as fallback.

    Pagination: WooCommerce-style /page/N/ is tried first; ?page=N second.
    Cache key: numeric ID or slug extracted from the detail URL.
    """

    BROWSE_CANDIDATES = [
        "/buku-bekas",
        "/toko",
        "/shop",
        "/books",
        "/semua-buku",
        "/katalog",
        "",          # homepage may itself be a listing
    ]
    # URL segments that indicate a detail page
    DETAIL_SIGNALS = ["/product/", "/buku/", "/listing/", "/book/", "/item/", "/p/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "id-ID,id;q=0.9,en;q=0.8",
    }

    def __init__(self, limit_pages=100, use_playwright=False):
        super().__init__(platform_name="Bukubekas.id", territory="Indonesia")
        self.limit_pages = limit_pages
        self.base_url = "https://bukubekas.id"
        self.use_playwright = use_playwright
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        self.logger.info(
            f"Starting Bukubekas.id harvest (cache-first). "
            f"limit_pages={self.limit_pages} playwright={self.use_playwright}"
        )

        if self.use_playwright:
            self._run_playwright()
        else:
            self._run_httpx()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    # ------------------------------------------------------------------
    # httpx path
    # ------------------------------------------------------------------

    def _run_httpx(self):
        browse_url = self._find_browse_url_httpx()
        seen: set[str] = set()

        for pg_num in range(1, self.limit_pages + 1):
            # Try WooCommerce-style /page/N/ first, then ?page=N
            urls_to_try = [
                f"{browse_url.rstrip('/')}/page/{pg_num}/",
                f"{browse_url}?page={pg_num}",
            ] if pg_num > 1 else [browse_url]

            html = None
            used_url = browse_url
            for candidate_url in urls_to_try:
                try:
                    resp = self.client.get(candidate_url)
                    if resp.status_code == 200 and len(resp.text) > 500:
                        html = resp.text
                        used_url = candidate_url
                        break
                    elif resp.status_code in (404, 410):
                        break
                except Exception as e:
                    self.logger.debug(f"httpx fetch error for {candidate_url}: {e}")

            if not html:
                self.logger.info(f"No content on page {pg_num} — done.")
                break

            self.logger.info(f"Index page {pg_num}: {used_url}")
            soup = BeautifulSoup(html, "html.parser")
            book_links = self._extract_links_soup(soup, seen)

            if not book_links:
                # Might be a thin JS page — switch to Playwright
                self.logger.warning(
                    "No book links found via httpx on first page. "
                    "Re-running with Playwright (--playwright flag next time)."
                )
                self.client.close()
                self._run_playwright()
                return

            self.logger.info(f"Found {len(book_links)} new links on page {pg_num}.")
            for link in book_links:
                seen.add(link)
                self._harvest_item_httpx(link)
                time.sleep(0.8)

        self.client.close()

    def _find_browse_url_httpx(self) -> str:
        for path in self.BROWSE_CANDIDATES:
            candidate = self.base_url + path
            try:
                resp = self.client.get(candidate)
                if resp.status_code == 200:
                    soup = BeautifulSoup(resp.text, "html.parser")
                    links = [a.get("href", "") for a in soup.find_all("a", href=True)]
                    if any(
                        sig in (l or "") for l in links for sig in self.DETAIL_SIGNALS
                    ):
                        self.logger.info(f"Browse URL confirmed: {candidate}")
                        return candidate
            except Exception as e:
                self.logger.debug(f"Candidate {path} failed: {e}")
        self.logger.warning("No browse path matched — using homepage.")
        return self.base_url

    def _extract_links_soup(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = urljoin(self.base_url, a["href"])
            if (
                self.base_url in href
                and any(sig in href for sig in self.DETAIL_SIGNALS)
                and href not in seen
            ):
                links.append(href)
        return list(dict.fromkeys(links))

    def _harvest_item_httpx(self, url: str):
        item_id = self._url_to_id(url)
        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self.client.get(url)
            if resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response ({resp.status_code}) for {url}")
                return

            self.cache_html(item_id, resp.text)

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

    # ------------------------------------------------------------------
    # Playwright path (fallback / --playwright flag)
    # ------------------------------------------------------------------

    def _run_playwright(self):
        seen: set[str] = set()

        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)

            try:
                page.goto(self.base_url, timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(2000)

                browse_url = self._find_browse_url_pw(page)

                for pg_num in range(1, self.limit_pages + 1):
                    # Try WooCommerce /page/N/ first
                    urls_to_try = (
                        [
                            f"{browse_url.rstrip('/')}/page/{pg_num}/",
                            f"{browse_url}?page={pg_num}",
                        ]
                        if pg_num > 1
                        else [browse_url]
                    )

                    loaded = False
                    for candidate_url in urls_to_try:
                        try:
                            resp = page.goto(candidate_url, timeout=25000, wait_until="domcontentloaded")
                            page.wait_for_timeout(2000)
                            if resp and resp.status == 200:
                                loaded = True
                                break
                        except Exception:
                            pass

                    if not loaded:
                        self.logger.info(f"Could not load page {pg_num} — done.")
                        break

                    self.logger.info(f"Index page {pg_num} (Playwright)")
                    book_links = self._extract_links_pw(page, seen)
                    if not book_links:
                        self.logger.info(f"No new book links on page {pg_num} — done.")
                        break

                    self.logger.info(f"Found {len(book_links)} new links.")
                    for link in book_links:
                        seen.add(link)
                        self._harvest_item_pw(page, link)
                        page.wait_for_timeout(700)

            except Exception as e:
                self.logger.error(f"Playwright crawl error: {e}")
            finally:
                browser.close()

    def _find_browse_url_pw(self, page) -> str:
        for path in self.BROWSE_CANDIDATES:
            candidate = self.base_url + path
            try:
                resp = page.goto(candidate, timeout=20000, wait_until="domcontentloaded")
                page.wait_for_timeout(1500)
                if resp and resp.status == 200:
                    content = page.content()
                    if any(sig in content for sig in self.DETAIL_SIGNALS):
                        self.logger.info(f"Browse URL confirmed (Playwright): {candidate}")
                        return candidate
            except Exception as e:
                self.logger.debug(f"Candidate {path} failed: {e}")
        self.logger.warning("Playwright: no browse path matched — using homepage.")
        page.goto(self.base_url, timeout=30000, wait_until="domcontentloaded")
        return self.base_url

    def _extract_links_pw(self, page, seen: set) -> list[str]:
        all_links: list[str] = page.evaluate(
            "() => Array.from(document.querySelectorAll('a[href]')).map(a => a.href)"
        )
        return [
            l for l in dict.fromkeys(all_links)
            if self.base_url in l
            and any(sig in l for sig in self.DETAIL_SIGNALS)
            and l not in seen
        ]

    def _harvest_item_pw(self, page, url: str):
        item_id = self._url_to_id(url)
        try:
            self.logger.info(f"Harvesting: {url}")
            page.goto(url, wait_until="domcontentloaded", timeout=30000)
            page.wait_for_timeout(1500)
            html = page.content()

            if len(html) < 500:
                self.logger.warning(f"Thin response for {url} — skipping.")
                return

            self.cache_html(item_id, html)

            title_el = page.query_selector("h1")
            title = title_el.inner_text().strip() if title_el else "Cached Item"

            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                listing_url=url,
                condition="Cached for AI extraction",
            ))
        except Exception as e:
            self.logger.error(f"Error harvesting {url}: {e}")

    # ------------------------------------------------------------------
    # Shared helpers
    # ------------------------------------------------------------------

    @staticmethod
    def _url_to_id(url: str) -> str:
        slug = next(
            (s for s in reversed(url.rstrip("/").split("/")) if s and s != "#"),
            str(int(time.time()))
        )
        return re.sub(r"[^a-zA-Z0-9_-]", "_", slug)[:80]


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Bukubekas.id (Indonesia) cache-first spider")
    parser.add_argument("--limit", type=int, default=100,
                        help="Max listing-index pages to crawl (default: 100)")
    parser.add_argument("--playwright", action="store_true",
                        help="Force Playwright mode (default: httpx with auto-fallback)")
    args = parser.parse_args()
    BukubekasSpider(limit_pages=args.limit, use_playwright=args.playwright).run()
