import argparse
import re
import time

from base_spider import BaseSpider
from models import BookListing
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth


class CarousellPhSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Carousell Philippines", territory="Philippines")
        self.limit_pages = limit_pages
        self.base_url = "https://www.carousell.ph"

    def run(self):
        self.logger.info(f"Starting Carousell PH Harvest (Cache-First). Limit: {self.limit_pages} pages.")

        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)

            try:
                # Target Books category
                target_url = "https://www.carousell.ph/categories/hobbies-toys-8/books-magazines-10/"
                page.goto(target_url, wait_until="domcontentloaded", timeout=60000)
                page.wait_for_timeout(3000)

                # Infinite scroll for Carousell instead of strict pagination
                for current_page in range(1, self.limit_pages + 1):
                    self.logger.info(f"Scrolling to load page {current_page} equivalents...")
                    page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
                    page.wait_for_timeout(3000)

                    # Carousell paths are typically /p/item-name-123456789/
                    links = page.evaluate("() => Array.from(document.querySelectorAll('a')).map(a => a.href)")
                    product_links = list(
                        {
                            link
                            for link in links
                            if "/p/" in link and re.search(r"-\d+/?$", link)
                        }
                    )

                    if not product_links:
                        self.logger.warning("No product links found in this scroll pass.")
                        continue

                    # We will just grab 5 links per scroll to avoid endless looping in limited tests
                    batch_links = product_links[:5]

                    for p_url in batch_links:
                        try:
                            self._harvest_item(context, p_url)
                        except Exception as e:
                            self.logger.error(f"Error harvesting {p_url}: {e}")

            except Exception as e:
                self.logger.error(f"Extraction failed: {e}")
            finally:
                browser.close()

    def _harvest_item(self, context, url):
        # Open in a new tab so we don't lose scroll state
        p_page = context.new_page()
        Stealth().apply_stealth_sync(p_page)

        try:
            item_id_match = re.search(r"-(\d+)/?$", url)
            item_id = item_id_match.group(1) if item_id_match else str(time.time())

            self.logger.info(f"Harvesting item: {url}")
            p_page.goto(url, wait_until="domcontentloaded", timeout=60000)
            p_page.wait_for_timeout(2000)

            html_content = p_page.content()

            # CACHE FIRST
            self.cache_html(item_id, html_content)

            # Save minimal record
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title="Cached Item",
                listing_url=url,
                condition="Used (Carousell Marketplace)"
            )
            self.save_item(item)
        finally:
            p_page.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = CarousellPhSpider(limit_pages=args.limit)
    spider.run()
