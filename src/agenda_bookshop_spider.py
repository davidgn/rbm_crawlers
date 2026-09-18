import argparse
import asyncio
import json
import re
from urllib.parse import quote
from models import BookListing
from base_spider import BaseSpider
import nodriver as uc
from isbn_utils import isbn_from_url

class AgendaBookshopSpider(BaseSpider):
    def __init__(self, limit_items=None, limit_pages=5):
        super().__init__(platform_name="Agenda Bookshop", territory="Malta")
        self.limit_items = limit_items
        self.limit_pages = limit_pages  # unused: single suggest.json call, no pagination

    def run(self, query: str):
        asyncio.run(self._run_async(query))

    async def _run_async(self, query: str):
        self.logger.info(f"Starting Agenda Bookshop nodriver crawl. Search Term: {query}")
        browser = await uc.start()
        try:
            page = await browser.get("about:blank")
            # Navigate to homepage first to solve Cloudflare
            await page.get("https://agendabookshop.com")
            await asyncio.sleep(8)

            # Hit Shopify suggest API
            api_url = f"https://agendabookshop.com/search/suggest.json?q={quote(query)}&resources[type]=product&resources[limit]={self.limit_items or 20}"
            self.logger.info(f"Hitting API: {api_url}")
            await page.get(api_url)
            await asyncio.sleep(3)

            html = await page.get_content()
            # Extract JSON from inside <pre> if it renders as text
            m = re.search(r"(\{.*\})", html, re.DOTALL)
            if not m:
                self.logger.error("Could not find JSON in response.")
                return

            try:
                data = json.loads(m.group(1))
            except Exception as e:
                self.logger.error(f"JSON decode error: {e}")
                return

            products = data.get("resources", {}).get("results", {}).get("products", [])
            self.logger.info(f"Found {len(products)} products.")

            for prod in products:
                title = prod.get("title")
                url = prod.get("url")
                if not title or not url: continue
                full_url = f"https://agendabookshop.com{url.split('?')[0]}"
                price_str = prod.get("price")
                
                # Try to parse numeric price
                price_val = None
                if price_str:
                    pm = re.search(r"[\d\.,]+", price_str)
                    if pm: price_val = pm.group(0).replace(',', '.')

                self.save_item(BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    listing_url=full_url,
                    price=price_val,
                    price_currency="EUR",
                    isbn=isbn_from_url(full_url)
                ))
        finally:
            browser.stop()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="harry potter")
    parser.add_argument("--limit-items", type=int, default=10)
    parser.add_argument("--limit-pages", type=int, default=5,
                         help="Unused (single suggest.json call, no pagination), kept for CLI consistency")
    args = parser.parse_args()
    AgendaBookshopSpider(limit_items=args.limit_items, limit_pages=args.limit_pages).run(args.query)
