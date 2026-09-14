import argparse
import asyncio
import re
import time
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider
import nodriver as uc

class BooksOnAppSpider(BaseSpider):
    """
    BooksOnApp (booksonapp.com) — South Africa main-universe book marketplace.

    South African peer-to-peer book buy/sell/exchange marketplace with both
    app and web surfaces.  Captures ISBNs, pricing, condition, and bibliographic
    metadata.

    Re-written to use nodriver to bypass AWS WAF / Cloudflare blocks.
    Browse paths probed at startup.  Pagination: ?page=N.
    """

    BASE_URL = "https://booksonapp.com"
    BROWSE_CANDIDATES = [
        "/books",
        "/listings",
        "/browse",
        "/shop",
        "/store",
        "/all-books",
        "",
    ]
    DETAIL_SIGNALS = ["/book/", "/listing/", "/product/", "/item/", "/books/"]

    def __init__(self, limit_pages=100, limit_items=None):
        super().__init__(platform_name="BooksOnApp", territory="South Africa")
        self.limit_pages = limit_pages
        self.limit_items = limit_items

    def run(self):
        asyncio.run(self._run_async())

    async def _run_async(self):
        self.logger.info(f"Starting BooksOnApp harvest (nodriver). limit_pages={self.limit_pages}")
        seen = set()
        browser = await uc.start()
        try:
            page = await browser.get("about:blank")
            browse_url = await self._find_browse_url(page)

            for pg_num in range(1, self.limit_pages + 1):
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break

                url = browse_url if pg_num == 1 else f"{browse_url}{'&' if '?' in browse_url else '?'}page={pg_num}"
                self.logger.info(f"Index page {pg_num}: {url}")

                try:
                    await page.get(url)
                    await asyncio.sleep(5)
                except Exception as e:
                    self.logger.error(f"Failed to load page {pg_num}: {e}")
                    break

                html = await page.get_content()
                soup = BeautifulSoup(html, "html.parser")
                book_links = self._extract_book_links(soup, seen)
                
                if not book_links:
                    self.logger.info(f"No new links on page {pg_num} — done.")
                    break

                self.logger.info(f"Found {len(book_links)} new links.")
                for link in book_links:
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

    async def _find_browse_url(self, page) -> str:
        for path in self.BROWSE_CANDIDATES:
            candidate = self.BASE_URL + path
            try:
                await page.get(candidate)
                await asyncio.sleep(4)
                html = await page.get_content()
                if any(sig in html for sig in self.DETAIL_SIGNALS):
                    self.logger.info(f"Browse URL confirmed: {candidate}")
                    return candidate
            except Exception as e:
                self.logger.debug(f"Candidate {path} failed: {e}")
        self.logger.warning("No browse path matched — using homepage.")
        await page.get(self.BASE_URL)
        return self.BASE_URL

    def _extract_book_links(self, soup, seen: set) -> list[str]:
        all_links = [a.get("href", "") for a in soup.find_all("a", href=True)]
        return [
            (self.BASE_URL + l if l.startswith("/") else l) for l in dict.fromkeys(all_links)
            if any(sig in l for sig in self.DETAIL_SIGNALS)
            and (self.BASE_URL + l if l.startswith("/") else l) not in seen
        ]

    async def _harvest_item(self, page, url: str):
        slug = next(
            (s for s in reversed(url.rstrip("/").split("/")) if s and s != "#"),
            str(int(time.time()))
        )
        item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", slug)[:80]

        try:
            self.logger.info(f"Harvesting: {url}")
            await page.get(url)
            await asyncio.sleep(4)
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
    parser = argparse.ArgumentParser(description="BooksOnApp South Africa cache-first spider")
    parser.add_argument("--limit-pages", type=int, default=100)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    BooksOnAppSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
