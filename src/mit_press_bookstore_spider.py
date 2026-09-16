import asyncio
from urllib.parse import urljoin
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing
import nodriver as uc

# The site's own search box (#header-search inside #indiecommerce-search-header-form)
# is a Drupal/IndieCommerce form that must be submitted for real — navigating
# directly to ?q=<term> (even reusing the same session) returns the plain
# homepage, not results, and a synthetic Enter keypress / send_keys doesn't
# register on this form either. Setting the input's value via the native
# setter + dispatching input/change events and calling form.requestSubmit()
# does work. Pagination is likewise AJAX-driven (Drupal's "use-ajax" pager),
# so subsequent pages are reached by clicking the pager link for that page
# number rather than navigating to its href directly.
JS_SUBMIT_SEARCH = """
(function(term) {
    const input = document.getElementById('header-search');
    const nativeSetter = Object.getOwnPropertyDescriptor(window.HTMLInputElement.prototype, 'value').set;
    nativeSetter.call(input, term);
    input.dispatchEvent(new Event('input', { bubbles: true }));
    input.dispatchEvent(new Event('change', { bubbles: true }));
    document.getElementById('indiecommerce-search-header-form').requestSubmit();
    return true;
})(arguments[0]);
"""


class MitPressBookstoreSpider(BaseSpider):
    BASE_URL = "https://mitpressbookstore.mit.edu"

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(platform_name="MIT Press Bookstore", territory="United States")
        self.limit_pages = limit_pages
        self.limit_items = limit_items

    def run(self, search_term: str = None):
        asyncio.run(self._run_async(search_term or "books"))

    async def _run_async(self, search_term: str):
        self.logger.info(f"Starting MIT Press Bookstore crawl. Search Term: {search_term}")
        browser = await uc.start()
        try:
            page = await browser.get(self.BASE_URL)
            await asyncio.sleep(5)
            await page.evaluate(JS_SUBMIT_SEARCH.replace("arguments[0]", repr(search_term)))
            await asyncio.sleep(6)

            for page_num in range(1, self.limit_pages + 1):
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break

                html = await page.get_content()
                soup = BeautifulSoup(html, "html.parser")
                items = soup.select("article.search-result__wrapper")
                if not items:
                    self.logger.info(f"No items found on page {page_num}.")
                    break

                for item in items:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    try:
                        self._parse_item(item)
                    except Exception as e:
                        self.logger.error(f"Error parsing item: {e}")

                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break
                if page_num >= self.limit_pages:
                    break

                next_link = soup.select_one(f'nav.pager a[title="Go to page {page_num + 1}"]')
                if not next_link:
                    self.logger.info(f"No pager link to page {page_num + 1} — done.")
                    break

                clicked = await page.evaluate(
                    f'document.querySelector(\'nav.pager a[title="Go to page {page_num + 1}"]\').click(); true'
                )
                if not clicked:
                    break
                await asyncio.sleep(5)

        except Exception as e:
            self.logger.error(f"Error: {e}")
        finally:
            browser.stop()

        self.logger.info(f"Finished MIT Press Bookstore. Scraped {self.items_scraped} items.")

    def _parse_item(self, item_soup):
        title_el = item_soup.select_one(".search-result__title a")
        if not title_el:
            return
        title = title_el.get_text(strip=True)
        href = title_el.get("href")
        if not title or not href:
            return
        listing_url = urljoin(self.BASE_URL, href)

        author_el = item_soup.select_one(".search-result__author a")
        author = author_el.get_text(strip=True) if author_el else None

        price_val = None
        price_el = item_soup.select_one(".search-result__price")
        if price_el:
            import re
            m = re.search(r"[\d.,]+", price_el.get_text())
            if m:
                price_val = m.group(0).replace(",", "")

        isbn = None
        isbn_el = item_soup.select_one(".product-list__isbn")
        if isbn_el:
            isbn = isbn_el.get_text(strip=True).replace("ISBN:", "").strip()

        try:
            book = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=author,
                isbn=isbn,
                price=price_val,
                price_currency="USD" if price_val else None,
                listing_url=listing_url,
            )
            self.save_item(book)
        except Exception as e:
            self.logger.warning(f"Skipping listing due to validation error: {e}")


if __name__ == "__main__":
    import argparse
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="MIT Press Bookstore spider")
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args = parser.parse_args()
    MitPressBookstoreSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run(search_term=args.query)
