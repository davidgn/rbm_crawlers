import argparse
import asyncio
import re
import time
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider
import nodriver as uc


class TakealotSpider(BaseSpider):
    """
    Takealot Books (takealot.com/books) — South Africa main-universe bookstore.

    South Africa's dominant e-commerce platform with a major books category
    covering new, used, and marketplace titles.  React SPA requiring Playwright/nodriver.
    Captures ISBNs, pricing, condition, and bibliographic metadata.

    Re-written to use nodriver to bypass AWS WAF / Cloudflare blocks.
    Entry: /books category.  Pagination: ?page=N.
    Detail URLs matched on /PLID-XXXXXXXX (Takealot product ID pattern).
    """

    BASE_URL = "https://www.takealot.com"
    BROWSE_URL = "https://www.takealot.com/books"

    def __init__(self, limit_pages=100, limit_items=None):
        super().__init__(platform_name="Takealot Books", territory="South Africa")
        self.limit_pages = limit_pages
        self.limit_items = limit_items

    def run(self):
        asyncio.run(self._run_async())

    async def _run_async(self):
        self.logger.info(f"Starting Takealot Books harvest (nodriver). limit_pages={self.limit_pages}")
        seen = set()

        browser = await uc.start()
        try:
            page = await browser.get("about:blank")
            await page.get(self.BROWSE_URL)
            await asyncio.sleep(8) # Wait for initial load and bot check

            for pg_num in range(1, self.limit_pages + 1):
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break

                url = self.BROWSE_URL if pg_num == 1 else f"{self.BROWSE_URL}?page={pg_num}"
                self.logger.info(f"Index page {pg_num}: {url}")

                try:
                    await page.get(url)
                    await asyncio.sleep(5)
                except Exception as e:
                    self.logger.error(f"Failed to load page {pg_num}: {e}")
                    break

                html = await page.get_content()
                soup = BeautifulSoup(html, "html.parser")
                
                all_links = [a.get("href") for a in soup.find_all("a", href=True)]
                book_links = [
                    self.BASE_URL + l if l.startswith("/") else l
                    for l in dict.fromkeys(all_links)
                    if (re.search(r"/PLID\d+", l) or any(sig in l for sig in ["/product/", "/p/"]))
                ]
                
                # filter seen
                new_links = [l for l in book_links if l not in seen and self.BASE_URL in l]

                if not new_links:
                    self.logger.info(f"No new links on page {pg_num} — done.")
                    break

                self.logger.info(f"Found {len(new_links)} new links.")
                for link in new_links:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    seen.add(link)
                    await self._harvest_item(page, link)
                    await asyncio.sleep(2)

        except Exception as e:
            self.logger.error(f"Crawl error: {e}")
        finally:
            browser.stop()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    async def _harvest_item(self, page, url: str):
        m = re.search(r"PLID(\d+)", url)
        item_id = f"PLID{m.group(1)}" if m else re.sub(
            r"[^a-zA-Z0-9_-]", "_",
            next((s for s in reversed(url.rstrip("/").split("/")) if s), str(int(time.time())))
        )[:80]

        try:
            self.logger.info(f"Harvesting: {url}")
            await page.get(url)
            await asyncio.sleep(5)
            html = await page.get_content()

            if len(html) < 500:
                self.logger.warning(f"Thin response for {url} — skipping.")
                return

            self.cache_html(item_id, html, url=url)

            soup = BeautifulSoup(html, "html.parser")
            title_el = soup.find("h1")
            title = title_el.get_text(strip=True) if title_el else "Cached Item"

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
    parser.add_argument("--limit-pages", type=int, default=100)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    TakealotSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
