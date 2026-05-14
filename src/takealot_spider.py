import argparse
import re
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider


class TakealotSpider(BaseSpider):
    """
    Takealot Books (takealot.com/books) — South Africa main-universe bookstore.

    South Africa's dominant e-commerce platform with a major books category
    covering new, used, and marketplace titles.  React SPA requiring Playwright.
    Captures ISBNs, pricing, condition, and bibliographic metadata.

    Playwright + stealth.
    Entry: /books category.  Pagination: ?page=N.
    Detail URLs matched on /PLID-XXXXXXXX (Takealot product ID pattern).
    """

    BASE_URL = "https://www.takealot.com"
    BROWSE_URL = "https://www.takealot.com/books"

    DETAIL_SIGNALS = ["/PLID", "/product/", "/p/"]

    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Takealot Books", territory="South Africa")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(
            f"Starting Takealot Books harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)

            try:
                page.goto(self.BROWSE_URL, timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(3000)

                for pg_num in range(1, self.limit_pages + 1):
                    url = self.BROWSE_URL if pg_num == 1 else f"{self.BROWSE_URL}?page={pg_num}"
                    self.logger.info(f"Index page {pg_num}: {url}")

                    try:
                        page.goto(url, timeout=30000, wait_until="domcontentloaded")
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load page {pg_num}: {e}")
                        break

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

    def _extract_book_links(self, page, seen: set) -> list[str]:
        all_links: list[str] = page.evaluate(
            "() => Array.from(document.querySelectorAll('a[href]')).map(a => a.href)"
        )
        return [
            l for l in dict.fromkeys(all_links)
            if self.BASE_URL in l
            and (re.search(r"/PLID\d+", l) or any(sig in l for sig in ["/product/", "/p/"]))
            and l not in seen
        ]

    def _harvest_item(self, page, url: str):
        m = re.search(r"PLID(\d+)", url)
        item_id = f"PLID{m.group(1)}" if m else re.sub(
            r"[^a-zA-Z0-9_-]", "_",
            next((s for s in reversed(url.rstrip("/").split("/")) if s), str(int(time.time())))
        )[:80]

        try:
            self.logger.info(f"Harvesting: {url}")
            page.goto(url, wait_until="domcontentloaded", timeout=30000)
            page.wait_for_timeout(2000)
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
    parser = argparse.ArgumentParser(description="Takealot Books South Africa cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    args = parser.parse_args()
    TakealotSpider(limit_pages=args.limit).run()
