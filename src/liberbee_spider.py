"""
Liberbee spider — Ukraine's used-book marketplace (www.liberbee.com).

React SPA with no SSR content — requires nodriver (undetected Chromium).
63,452 books across 25 categories at /books/{category-slug}?page=N
(30 articles per page).

Each article.book on a category listing has title, author, city, language,
and minimum price. We fetch the book detail page (/{book-slug}) to get
individual seller copies (div.bookCopy) with per-offer price, condition,
and seller ID.

Requires: pip install nodriver
"""
import asyncio
import re
from bs4 import BeautifulSoup
import nodriver
from models import BookListing
from base_spider import BaseSpider


BASE_URL = "https://www.liberbee.com"
PAGE_DELAY = 2.0
BOOK_DELAY = 1.5
CF_WARMUP_SECS = 12


class LiberbeeSpider(BaseSpider):
    def __init__(self, delay: float = 2.0, max_pages: int = 300,
                 categories: list[str] | None = None, fetch_detail: bool = True):
        super().__init__(platform_name="Liberbee", territory="Ukraine")
        self.delay = delay
        self.max_pages = max_pages
        self.fetch_detail = fetch_detail
        self._categories = categories  # override for testing

    def run(self):
        asyncio.run(self._run_async())

    async def _run_async(self):
        browser = await nodriver.start()
        try:
            categories = self._categories or await self._discover_categories(browser)
            self.logger.info("Harvesting %d categories", len(categories))
            seen_books: set[str] = set()
            for slug in categories:
                await self._harvest_category(browser, slug, seen_books)
        finally:
            browser.stop()
        self.logger.info("Done: %d listings saved", self.items_scraped)

    async def _get_html(self, browser, url: str, wait: float = 3.0) -> str:
        page = await browser.get(url)
        await asyncio.sleep(wait)
        return await page.get_content()

    async def _discover_categories(self, browser) -> list[str]:
        self.logger.info("Discovering categories from homepage...")
        html = await self._get_html(browser, BASE_URL, wait=CF_WARMUP_SECS)
        soup = BeautifulSoup(html, "html.parser")
        slugs: list[str] = []
        seen: set[str] = set()
        for a in soup.find_all("a", href=True):
            m = re.match(r"^/books/([^/?#]+)$", a["href"])
            if m:
                slug = m.group(1)
                if slug not in seen:
                    seen.add(slug)
                    slugs.append(slug)
        if not slugs:
            self.logger.warning("No categories found — using hardcoded fallback")
            slugs = _CATEGORY_FALLBACK
        self.logger.info("Found %d category slugs", len(slugs))
        return slugs

    async def _harvest_category(self, browser, cat_slug: str, seen_books: set):
        self.logger.info("Category: %s", cat_slug)
        for page_num in range(1, self.max_pages + 1):
            url = f"{BASE_URL}/books/{cat_slug}?page={page_num}"
            try:
                html = await self._get_html(browser, url, wait=3.0)
            except Exception as e:
                self.logger.error("cat=%s page=%d error: %s", cat_slug, page_num, e)
                break

            soup = BeautifulSoup(html, "html.parser")
            articles = soup.select("article.book")
            if not articles:
                self.logger.info("cat=%s page=%d: no articles — done", cat_slug, page_num)
                break

            new_count = 0
            for article in articles:
                book_url = self._article_url(article)
                if not book_url or book_url in seen_books:
                    continue
                seen_books.add(book_url)
                new_count += 1

                if self.fetch_detail:
                    await self._harvest_book_detail(browser, article, book_url)
                else:
                    listing = self._listing_from_article(article, book_url)
                    if listing:
                        self.save_item(listing)
                await asyncio.sleep(BOOK_DELAY)

            self.logger.info("cat=%-35s page %3d: %2d new  (total %d)",
                             cat_slug[:35], page_num, new_count, self.items_scraped)
            if len(articles) < 28:  # 30/page; allow small variance
                break
            await asyncio.sleep(self.delay)

    def _article_url(self, article) -> str | None:
        a = article.select_one("a.book--title, a.book--cover")
        if not a:
            return None
        href = a.get("href", "").strip()
        if not href:
            return None
        return href if href.startswith("http") else BASE_URL + href

    def _article_meta(self, article) -> dict:
        title_el = article.select_one("a.book--title")
        title = title_el.get_text(strip=True) if title_el else None

        author_el = article.select_one(".book--author")
        author = author_el.get_text(strip=True) if author_el else None

        location_el = article.select_one(".book--locations span")
        location = location_el.get_text(strip=True) if location_el else None

        lang_el = article.select_one(".book--lang .infoItem--value")
        if not lang_el:
            lang_el = article.select_one(".book--lang")
        language = lang_el.get_text(strip=True) if lang_el else None

        price_el = article.select_one(".btn-primary span span, .btn-primary span")
        price = price_el.get_text(strip=True) if price_el else None

        return {
            "title": title,
            "author": author,
            "location": location,
            "language": language,
            "price": price,
        }

    def _listing_from_article(self, article, book_url: str) -> BookListing | None:
        meta = self._article_meta(article)
        if not meta.get("title"):
            return None
        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=meta["title"],
            author=meta.get("author"),
            language=meta.get("language"),
            price=meta.get("price"),
            listing_url=book_url,
        )

    async def _harvest_book_detail(self, browser, article, book_url: str):
        article_meta = self._article_meta(article)
        title = article_meta.get("title")
        if not title:
            return

        try:
            html = await self._get_html(browser, book_url, wait=3.0)
        except Exception as e:
            self.logger.warning("detail fetch failed %s: %s", book_url, e)
            # Fall back to article-level record
            listing = self._listing_from_article(article, book_url)
            if listing:
                self.save_item(listing)
            return

        soup = BeautifulSoup(html, "html.parser")
        copies = soup.select("div.bookCopy")

        if not copies:
            # No individual copies visible — save article-level record
            listing = self._listing_from_article(article, book_url)
            if listing:
                self.save_item(listing)
            return

        # Bibliographic fields from the detail page header
        bib = self._parse_book_bib(soup)

        for copy in copies:
            listing = self._listing_from_copy(copy, title, bib, article_meta, book_url)
            if listing:
                self.save_item(listing)

    def _parse_book_bib(self, soup: BeautifulSoup) -> dict:
        bib: dict[str, str] = {}
        for row in soup.select(".bookInfo--row, .bookDetails tr, .book-meta li"):
            label_el = row.select_one(".bookInfo--label, th, .label")
            value_el = row.select_one(".bookInfo--value, td, .value")
            if label_el and value_el:
                key = label_el.get_text(strip=True).rstrip(":").strip().lower()
                val = value_el.get_text(strip=True) or None
                if val:
                    bib[key] = val
        return bib

    def _listing_from_copy(self, copy, title: str, bib: dict, article_meta: dict,
                            book_url: str) -> BookListing | None:
        price_el = copy.select_one(".deal--price span, .bookCopy--deal span")
        price = price_el.get_text(strip=True) if price_el else article_meta.get("price")

        cond_el = copy.select_one(".bookCondition, .bookCopy--condition")
        condition = cond_el.get_text(strip=True) if cond_el else None

        seller_el = copy.select_one("a.bookCopy--userName, a.bookCopy--avatar")
        seller_id = seller_el.get_text(strip=True) if seller_el else None
        if not seller_id and seller_el:
            # avatar link may have href like /users/{name}/books/active
            href = seller_el.get("href", "")
            m = re.search(r"/users/([^/]+)/", href)
            seller_id = m.group(1) if m else None

        isbn_raw = bib.get("isbn") or bib.get("isbn-13") or bib.get("isbn-10")
        isbn = re.sub(r"[^0-9X]", "", isbn_raw.upper())[:13] if isbn_raw else None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=article_meta.get("author") or bib.get("автор") or bib.get("author"),
            isbn=isbn or None,
            publisher=bib.get("видавництво") or bib.get("publisher") or bib.get("видавець"),
            publication_year=bib.get("рік видання") or bib.get("рік") or bib.get("year"),
            language=article_meta.get("language") or bib.get("мова") or bib.get("language"),
            condition=condition,
            price=price,
            seller_id=seller_id,
            listing_url=book_url,
        )


_CATEGORY_FALLBACK = [
    "fiction", "classic-literature", "detective-thriller", "fantasy-sci-fi",
    "romance", "historical-fiction", "horror", "adventure",
    "children", "young-adult",
    "science", "history", "psychology", "philosophy", "religion",
    "business", "self-help", "health", "cooking", "travel",
    "art", "poetry", "drama", "biography", "other",
]


def main():
    import argparse
    parser = argparse.ArgumentParser(description="Liberbee Ukraine used-book spider")
    parser.add_argument("--delay", type=float, default=2.0)
    parser.add_argument("--max-pages", type=int, default=300)
    parser.add_argument("--no-detail", action="store_true",
                        help="Skip detail page fetches (faster, less data)")
    parser.add_argument("--categories", nargs="*", default=None,
                        help="Category slugs to harvest (default: all)")
    args = parser.parse_args()
    LiberbeeSpider(
        delay=args.delay,
        max_pages=args.max_pages,
        categories=args.categories,
        fetch_detail=not args.no_detail,
    ).run()


if __name__ == "__main__":
    main()
