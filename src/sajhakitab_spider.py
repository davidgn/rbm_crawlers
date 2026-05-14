import argparse
import re
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider


class SajhaKitabSpider(BaseSpider):
    """
    Sajha Kitab (sajhakitab.com) — Nepal main-universe used-book marketplace.

    "Sajha" (साझा) = shared/common in Nepali.  The platform lets users buy
    and sell old books; confirmed online with fresh pass-136 evidence.

    Approach: Playwright + stealth.  The site is a React SPA (similar to
    Sasto Kitab).  We walk the browse/search listing via infinite-scroll or
    URL pagination, cache each detail page, and write a sidecar meta file.
    """

    BROWSE_CANDIDATES = [
        "/books",
        "/buy",
        "/browse",
        "/marketplace",
        "/all-books",
        "/listings",
        "",
    ]
    DETAIL_SIGNALS = ["/book/", "/listing/", "/product/", "/item/", "/books/"]

    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Sajha Kitab", territory="Nepal")
        self.limit_pages = limit_pages
        self.base_url = "https://sajhakitab.com"

    def run(self):
        self.logger.info(
            f"Starting Sajha Kitab harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)

            try:
                page.goto(self.base_url, timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(3000)

                browse_url = self._find_browse_url(page)

                for pg_num in range(1, self.limit_pages + 1):
                    if pg_num == 1:
                        url = browse_url
                    else:
                        url = f"{browse_url}?page={pg_num}"

                    self.logger.info(f"Index page {pg_num}: {url}")
                    try:
                        page.goto(url, timeout=30000, wait_until="domcontentloaded")
                        page.wait_for_timeout(2500)
                    except Exception as e:
                        self.logger.error(f"Failed to load page {pg_num}: {e}")
                        break

                    # Also try clicking a "Load More" button if present (same pattern as Sasto Kitab)
                    load_more = page.query_selector("button:has-text('Load More'), button:has-text('थप हेर्नुस्')")
                    if load_more and load_more.is_visible():
                        self.logger.info("Clicking Load More...")
                        load_more.click()
                        page.wait_for_timeout(2000)

                    book_links = self._extract_book_links(page, seen)
                    if not book_links:
                        self.logger.info(f"No new links on page {pg_num} — done.")
                        break

                    self.logger.info(f"Found {len(book_links)} new links.")
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
            l for l in dict.fromkeys(all_links)
            if self.base_url in l
            and any(sig in l for sig in self.DETAIL_SIGNALS)
            and l not in seen
        ]

    def _harvest_item(self, page, url: str):
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

            self.cache_html(item_id, html, url=url)

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
    parser = argparse.ArgumentParser(description="Sajha Kitab (Nepal) cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    args = parser.parse_args()
    SajhaKitabSpider(limit_pages=args.limit).run()
