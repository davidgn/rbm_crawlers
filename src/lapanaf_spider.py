import argparse
import asyncio
import re
import time
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider
import nodriver as uc

class LaPanafSpider(BaseSpider):
    """
    LaPanaf / Librairie Panafricaine (lapanaf.com) — Côte d'Ivoire bookstore.

    Established Ivorian pan-African online bookstore with French and African-
    interest titles.  Captures ISBNs, pricing, and bibliographic metadata.

    httpx + BeautifulSoup (server-rendered).
    Browse paths probed at startup.  Pagination: WooCommerce /page/N/ then ?page=N.
    """
    BASE_URL = "https://lapanaf.com"
    BROWSE_CANDIDATES = [
        "/product-category/livres",
        "/livres",
        "/boutique",
        "/shop",
        "/catalogue",
        "",
    ]
    DETAIL_SIGNALS = ["/product/", "/produit/", "/livre/", "/book/", "/item/"]

    def __init__(self, limit_pages=100, limit_items=None):
        super().__init__(platform_name="LaPanaf", territory="Côte d")
        self.limit_pages = limit_pages
        self.limit_items = limit_items

    def run(self):
        asyncio.run(self._run_async())

    async def _run_async(self):
        self.logger.info(f"Starting LaPanaf harvest (nodriver). limit_pages={self.limit_pages}")
        seen = set()
        browser = await uc.start()
        try:
            page = await browser.get("about:blank")
            browse_url = await self._find_browse_url(page)

            for pg_num in range(1, self.limit_pages + 1):
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break
                    
                urls_to_try = (
                    [
                        f"{browse_url.rstrip('/')}/page/{pg_num}/",
                        f"{browse_url}?page={pg_num}",
                    ]
                    if pg_num > 1
                    else [browse_url]
                )

                html, used_url = None, browse_url
                for candidate in urls_to_try:
                    try:
                        await page.get(candidate)
                        await asyncio.sleep(5)
                        resp_html = await page.get_content()
                        if len(resp_html) > 500 and "Page not found" not in resp_html:
                            html, used_url = resp_html, candidate
                            break
                    except Exception as e:
                        self.logger.debug(f"Fetch error for {candidate}: {e}")

                if not html:
                    break

                soup = BeautifulSoup(html, "html.parser")
                book_links = self._extract_links(soup, seen)

                if not book_links:
                    break

                for link in book_links:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    seen.add(link)
                    await self._harvest_item(page, link)
                    await asyncio.sleep(2)

        finally:
            browser.stop()

    async def _find_browse_url(self, page) -> str:
        for path in self.BROWSE_CANDIDATES:
            candidate = self.BASE_URL + path
            try:
                await page.get(candidate)
                await asyncio.sleep(4)
                html = await page.get_content()
                soup = BeautifulSoup(html, "html.parser")
                hrefs = [a.get("href", "") for a in soup.find_all("a", href=True)]
                if any(sig in (h or "") for h in hrefs for sig in self.DETAIL_SIGNALS):
                    return candidate
            except Exception:
                pass
        return self.BASE_URL

    def _extract_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = urljoin(self.BASE_URL, a["href"])
            if self.BASE_URL in href and any(sig in href for sig in self.DETAIL_SIGNALS) and href not in seen:
                links.append(href)
        return list(dict.fromkeys(links))

    async def _harvest_item(self, page, url: str):
        slug = next((s for s in reversed(url.rstrip("/").split("/")) if s and s != "#"), str(int(time.time())))
        item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", slug)[:80]
        try:
            await page.get(url)
            await asyncio.sleep(4)
            html = await page.get_content()
            if len(html) < 500: return
            self.cache_html(item_id, html, url=url)
            soup = BeautifulSoup(html, "html.parser")
            h1 = soup.find("h1")
            title = h1.get_text(strip=True) if h1 else "Cached Item"
            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                listing_url=url,
                condition="Cached for AI extraction",
            ))
        except Exception:
            pass

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=100)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    LaPanafSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
