import argparse
import re
import time
from urllib.parse import urljoin

from base_spider import BaseSpider
from models import BookListing
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth


class KingstoneSpider(BaseSpider):
    NAVIGATION_TIMEOUT_MS = 8000

    def __init__(self, limit_pages=50, limit_items=50):
        super().__init__(platform_name="Kingstone.com.tw", territory="Taiwan")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.items_attempted = 0
        self.base_url = "https://www.kingstone.com.tw"

    def run(self):
        self.logger.info(f"Starting Kingstone Taiwan Harvest (Cache-First). Limit: {self.limit_pages} pages.")

        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)

            try:
                # Target New Releases or a reliable index
                target_url = "https://www.kingstone.com.tw/newbook/book"

                for current_page in range(1, self.limit_pages + 1):
                    if self.items_attempted >= self.limit_items:
                        break
                    # Kingstone often uses page parameters
                    url = f"{target_url}?page={current_page}"
                    self.logger.info(f"Fetching index page {current_page}: {url}")

                    try:
                        page.goto(url, wait_until="domcontentloaded", timeout=self.NAVIGATION_TIMEOUT_MS)
                        page.wait_for_timeout(3000)
                    except Exception as e:
                        self.logger.error(f"Failed to load {url}: {e}")
                        break

                    # Discover product links: /basic/201856...
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list({link for link in links if "/basic/" in link})

                    if not product_links:
                        self.logger.warning(f"No product links found on page {current_page}. Scrolling...")
                        page.evaluate("window.scrollBy(0, 1000)")
                        page.wait_for_timeout(2000)
                        links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                        product_links = list({link for link in links if "/basic/" in link})

                    if not product_links:
                        break

                    for p_url in product_links:
                        if self.items_attempted >= self.limit_items:
                            break
                        self.items_attempted += 1
                        try:
                            self._harvest_item(page, p_url)
                            page.wait_for_timeout(1500)  # Gentle delay
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")

            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _parse_search_item(self, item) -> BookListing | None:
        title_link = item.select_one("h3.pdnamebox a[href]") or item.select_one("a[href*='/basic/']")
        if not title_link:
            return None

        listing_url = urljoin(self.base_url, title_link["href"])
        product_id_match = re.search(r"/basic/([^/?#]+)/?", listing_url)
        product_id = product_id_match.group(1) if product_id_match else None
        class_node = item.select_one(".classbox span")
        author_node = item.select_one(".author a") or item.select_one(".author")
        publisher_node = item.select_one(".publish a") or item.select_one(".publish")

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=self._clean(title_link.get_text(" ", strip=True)),
            author=self._clean(author_node.get_text(" ", strip=True)) if author_node else None,
            publisher=self._clean(publisher_node.get_text(" ", strip=True)) if publisher_node else None,
            category=self._clean(class_node.get_text(" ", strip=True)) if class_node else None,
            condition="New",
            price=self._price(item.get_text(" ", strip=True)),
            listing_url=listing_url,
            seller_comments=f"Kingstone product id: {product_id}" if product_id else None,
        )

    def _price(self, text: str) -> str | None:
        match = re.search(r"(?:特價|優惠價)?\s*([\d,]+)\s*元", text)
        return f"TWD {match.group(1).replace(',', '')}" if match else None

    def _clean(self, value: str) -> str:
        return re.sub(r"\s+", " ", value).strip()

    def _harvest_item(self, page, url):
        # Extract ID from /basic/12345
        item_id_match = re.search(r"basic/([^/?#]+)", url)
        item_id = item_id_match.group(1) if item_id_match else str(time.time())

        # Ensure it's not too long for the filesystem
        if len(item_id) > 100:
            item_id = item_id[-100:]

        self.logger.info(f"Harvesting item: {url}")
        page.goto(url, wait_until="domcontentloaded", timeout=self.NAVIGATION_TIMEOUT_MS)
        page.wait_for_timeout(2000)

        html_content = page.content()

        # CACHE FIRST
        self.cache_html(item_id, html_content)

        # Save minimal record
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title="Cached Item",
            listing_url=url,
            condition="New (Kingstone Retail)"
        )
        self.save_item(item)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    spider = KingstoneSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items or 50,
    )
    spider.run()
