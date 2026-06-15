"""
Metabook spider — Greece's used-book marketplace (metabook.gr).

Cloudflare Managed Challenge protects the site — httpx is blocked outright.
Uses nodriver (undetected Chromium) which passes the CF JS challenge after
a ~12 s warmup on the homepage.

Site structure:
  - Category pages: /books?category={slug}&page=N  (96 books/page)
  - Book pages: /books/{slug}-{id}  (bibliographic data + all seller offers)
  - Each offer has price, condition, description, seller username
  - ~1.5M listings from Greece + a few thousand from Cyprus

One BookListing is saved per seller offer.

Requires: pip install nodriver
"""
import asyncio
import re
from bs4 import BeautifulSoup
import nodriver
from models import BookListing
from base_spider import BaseSpider


BASE_URL = "https://metabook.gr"
CF_WARMUP_SECS = 14
PAGE_DELAY = 1.5

CATEGORIES = [
    "literature-fiction-212",
    "sciences-597",
    "home-family-599",
    "childrens-young-adult-600",
    "school-education-598",
    "book-languages-679",
]

FIELD_MAP = {
    "συγγραφέας": "author",
    "μεταφραστής": "translator",
    "εκδόσεις": "publisher",
    "έτος": "publication_year",
    "αριθμός σελίδων": "pages",
    "τύπος εξωφύλλου": "binding",
    "γλώσσα": "language",
    "isbn-13": "isbn13",
    "isbn-10": "isbn10",
    "κατηγορίες": "category",
}


class MetabookSpider(BaseSpider):
    def __init__(self, delay: float = 1.5, max_pages: int = 200,
                 categories: list[str] | None = None, max_offers_per_book: int = 50):
        super().__init__(platform_name="Metabook", territory="Greece")
        self.delay = delay
        self.max_pages = max_pages
        self.categories = categories or CATEGORIES
        self.max_offers_per_book = max_offers_per_book

    def run(self):
        asyncio.run(self._run_async())

    async def _run_async(self):
        browser = await nodriver.start()
        try:
            await self._cf_warmup(browser)
            seen_books: set[str] = set()
            for cat_slug in self.categories:
                await self._harvest_category(browser, cat_slug, seen_books)
        finally:
            browser.stop()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    async def _cf_warmup(self, browser):
        self.logger.info("Warming up Cloudflare clearance on homepage...")
        page = await browser.get(BASE_URL)
        await asyncio.sleep(CF_WARMUP_SECS)
        title = await page.evaluate("document.title")
        if "moment" in (title or "").lower() or "περιμένετε" in (title or "").lower():
            self.logger.warning("CF challenge still active after warmup — retrying in 10s")
            await asyncio.sleep(10)

    async def _get_html(self, browser, url: str, wait: float = 3.0) -> str:
        page = await browser.get(url)
        await asyncio.sleep(wait)
        return await page.get_content()

    async def _harvest_category(self, browser, cat_slug: str, seen_books: set):
        self.logger.info("Category: %s", cat_slug)
        for page_num in range(1, self.max_pages + 1):
            url = f"{BASE_URL}/books?category={cat_slug}&page={page_num}"
            try:
                html = await self._get_html(browser, url, wait=3.0)
            except Exception as e:
                self.logger.error("cat=%s page=%d error: %s", cat_slug, page_num, e)
                break

            soup = BeautifulSoup(html, "html.parser")
            book_links = self._extract_book_links(soup)
            new_books = [l for l in book_links if l not in seen_books]
            if not new_books:
                self.logger.info("cat=%s page=%d: no new books — done", cat_slug, page_num)
                break

            for link in new_books:
                seen_books.add(link)
                await self._harvest_book(browser, link)
                await asyncio.sleep(self.delay)

            self.logger.info("cat=%-40s page %3d: %2d books  (total %d)",
                             cat_slug[:40], page_num, len(new_books), self.items_scraped)
            if len(book_links) < 90:
                break
            await asyncio.sleep(self.delay)

    def _extract_book_links(self, soup: BeautifulSoup) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = a["href"]
            if "/books/" in href and re.search(r"-\d+$", href.rstrip("/")):
                full = href if href.startswith("http") else BASE_URL + href
                links.append(full)
        return list(dict.fromkeys(links))

    async def _harvest_book(self, browser, book_url: str):
        try:
            html = await self._get_html(browser, book_url, wait=3.0)
        except Exception as e:
            self.logger.warning("book fetch failed %s: %s", book_url, e)
            return

        soup = BeautifulSoup(html, "html.parser")

        # Title
        h1_tags = soup.select("h1")
        title = None
        for h1 in h1_tags:
            text = h1.get_text(strip=True)
            if text:
                title = text
                break
        if not title:
            return

        # Bibliographic metadata
        meta = self._parse_book_meta(soup)

        # Individual offers
        offers = soup.select("div.grid.gap-y-10[class*=book-offers]")
        if not offers:
            # Fallback: save one record for the book even without individual offer data
            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                **self._meta_to_listing_kwargs(meta),
                listing_url=book_url,
            ))
            return

        for offer in offers[:self.max_offers_per_book]:
            listing = self._listing_from_offer(offer, title, meta, book_url)
            if listing:
                self.save_item(listing)

    def _parse_book_meta(self, soup: BeautifulSoup) -> dict:
        meta: dict[str, str] = {}
        meta_div = soup.select_one("div.text-sm.text-meta-gray-600.mt-8")
        if not meta_div:
            return meta
        # The grid wrapper is the direct child of meta_div; rows are its children
        grid = meta_div.find("div", recursive=False)
        if not grid:
            return meta
        for row in grid.find_all("div", recursive=False):
            label_el = row.find("span", class_="font-meta-3")
            if not label_el:
                continue
            label = label_el.get_text(strip=True).rstrip(":").strip().lower()
            if label not in FIELD_MAP:
                continue
            # Collect text from all non-label children
            value_parts = []
            for child in row.children:
                if child is label_el:
                    continue
                text = child.get_text(strip=True) if hasattr(child, "get_text") else str(child).strip()
                if text:
                    value_parts.append(text)
            value = " ".join(value_parts).strip() or None
            if value:
                meta[FIELD_MAP[label]] = value
        return meta

    def _meta_to_listing_kwargs(self, meta: dict) -> dict:
        isbn = meta.get("isbn13") or meta.get("isbn10")
        if isbn:
            isbn = re.sub(r"[^0-9X]", "", isbn.upper())[:13] or None
        return {
            "author": meta.get("author"),
            "isbn": isbn,
            "publisher": meta.get("publisher"),
            "publication_year": meta.get("publication_year"),
            "pages": meta.get("pages"),
            "binding": meta.get("binding"),
            "language": meta.get("language"),
            "category": meta.get("category"),
        }

    def _listing_from_offer(self, offer, title: str, meta: dict, book_url: str) -> BookListing | None:
        price_el = offer.select_one("[class*=text-meta-red]")
        price = price_el.get_text(strip=True) if price_el else None

        cond_el = offer.select_one(".text-meta-gray-700")
        condition = cond_el.get_text(strip=True) if cond_el else None

        desc_el = offer.select_one(".border.rounded .text-sm")
        seller_comments = desc_el.get_text(strip=True) if desc_el else None

        seller_id = None
        seller_section = offer.select_one("[class*=order-2]")
        if seller_section:
            avatar_img = seller_section.select_one("img[src*=avatar], img[data-url*=avatar]")
            if avatar_img:
                seller_link = avatar_img.find_parent("a")
                if seller_link:
                    seller_id = seller_link.get_text(strip=True) or None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            **self._meta_to_listing_kwargs(meta),
            condition=condition,
            seller_comments=seller_comments,
            price=price,
            seller_id=seller_id,
            listing_url=book_url,
        )


def main():
    import argparse
    parser = argparse.ArgumentParser(description="Metabook Greece used-book spider")
    parser.add_argument("--delay", type=float, default=1.5)
    parser.add_argument("--max-pages", type=int, default=200)
    parser.add_argument("--max-offers", type=int, default=50)
    parser.add_argument("--categories", nargs="*", default=None,
                        help="Category slugs to harvest (default: all 6)")
    args = parser.parse_args()
    MetabookSpider(
        delay=args.delay,
        max_pages=args.max_pages,
        categories=args.categories,
        max_offers_per_book=args.max_offers,
    ).run()


if __name__ == "__main__":
    main()
