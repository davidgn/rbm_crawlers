import argparse
import re
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider


class ReshelfSpider(BaseSpider):
    """
    Reshelf (reshelf.co.th) — Thailand main-universe used-book marketplace.

    Reshelf is a curated Thai platform for buying/selling secondhand books.
    It renders as a SPA, so we use Playwright + stealth. The spider walks
    paginated listing pages, caches each detail page, and records a minimal
    manifest entry. Full extraction is delegated to the AI batch processor.

    URL pattern probed at startup — common SPA patterns tried in order.
    Pagination: ?page=N appended to the confirmed browse URL.
    """

    BROWSE_CANDIDATES = [
        "/marketplace",
        "/books",
        "/shop",
        "/all",
        "/listings",
        "/store",
    ]
    DETAIL_SIGNALS = ["/book/", "/listing/", "/product/", "/item/", "/books/"]

    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Reshelf", territory="Thailand")
        self.limit_pages = limit_pages
        self.base_url = "https://reshelf.co.th"

    def run(self):
        self.logger.info(
            f"Starting Reshelf harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)

            try:
                # Warm session / cookies on homepage
                page.goto(self.base_url, timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(2000)

                browse_url = self._find_browse_url(page)

                for pg_num in range(1, self.limit_pages + 1):
                    url = browse_url if pg_num == 1 else f"{browse_url}?page={pg_num}"
                    self.logger.info(f"Index page {pg_num}: {url}")

                    try:
                        page.goto(url, timeout=30000, wait_until="domcontentloaded")
                        page.wait_for_timeout(2500)
                    except Exception as e:
                        self.logger.error(f"Failed to load index page {pg_num}: {e}")
                        break

                    book_links = self._extract_book_links(page, seen)
                    if not book_links:
                        self.logger.info(f"No new book links on page {pg_num} — done.")
                        break

                    self.logger.info(f"Found {len(book_links)} new links on page {pg_num}.")
                    for link in book_links:
                        seen.add(link)
                        self._harvest_item(page, link)
                        page.wait_for_timeout(700)

            except Exception as e:
                self.logger.error(f"Crawl error: {e}")
            finally:
                browser.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    def _find_browse_url(self, page) -> str:
        for path in self.BROWSE_CANDIDATES:
            candidate = self.base_url + path
            try:
                resp = page.goto(candidate, timeout=20000, wait_until="domcontentloaded")
                page.wait_for_timeout(1500)
                if resp and resp.status == 200:
                    content = page.content()
                    if any(sig in content for sig in self.DETAIL_SIGNALS):
                        self.logger.info(f"Browse URL confirmed: {candidate}")
                        return candidate
            except Exception as e:
                self.logger.debug(f"Candidate {path} failed: {e}")

        self.logger.warning("No browse path matched — falling back to homepage.")
        page.goto(self.base_url, timeout=30000, wait_until="domcontentloaded")
        return self.base_url

    def _extract_book_links(self, page, seen: set) -> list[str]:
        all_links: list[str] = page.evaluate(
            "() => Array.from(document.querySelectorAll('a[href]')).map(a => a.href)"
        )
        return [
            l for l in dict.fromkeys(all_links)  # dedup, preserve order
            if self.base_url in l
            and any(sig in l for sig in self.DETAIL_SIGNALS)
            and l not in seen
        ]

    def _harvest_item(self, page, url: str):
        # Use the last non-empty path segment as cache key
        slug = next(
            (s for s in reversed(url.rstrip("/").split("/")) if s and s != "#"),
            str(int(time.time()))
        )
        item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", slug)[:80]

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


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Reshelf (Thailand) cache-first spider")
    parser.add_argument("--limit", type=int, default=100,
                        help="Max listing-index pages to crawl (default: 100)")
    args = parser.parse_args()
    ReshelfSpider(limit_pages=args.limit).run()
