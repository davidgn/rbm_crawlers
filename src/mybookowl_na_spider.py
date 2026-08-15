import requests
from base_spider import BaseSpider
from models import BookListing

class MybookowlNaSpider(BaseSpider):
    """
    WooCommerce Store API spider for My Book Owl (mybookowl.com) —
    dedicated online bookstore in Namibia (prices in NAD).
    Namibia outbound M-Bag origin (95.00 / 30 kg).
    """
    BASE_URL = "https://mybookowl.com"

    def __init__(self, limit_pages: int = 10):
        super().__init__(platform_name="My Book Owl Namibia", territory="Namibia")
        self.limit_pages = limit_pages
        self.session = requests.Session()
        self.session.headers.update({
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "application/json",
        })

    def run(self):
        self.logger.info("Starting My Book Owl Namibia crawler.")
        seen_ids = set()

        for page in range(1, self.limit_pages + 1):
            api_url = f"{self.BASE_URL}/wp-json/wc/store/products?page={page}&per_page=20"
            self.logger.info(f"Fetching page {page}: {api_url}")
            try:
                resp = self.session.get(api_url, timeout=20)
                if resp.status_code != 200:
                    break

                products = resp.json()
                if not products:
                    break

                for p in products:
                    p_id = p.get("id")
                    if p_id in seen_ids:
                        continue
                    seen_ids.add(p_id)

                    name = p.get("name")
                    if not name:
                        continue

                    # Extract price in NAD
                    prices_info = p.get("prices", {})
                    raw_price = prices_info.get("price")
                    minor_units = prices_info.get("currency_minor_unit", 2)
                    currency = prices_info.get("currency_code", "NAD")

                    price_str = None
                    if raw_price is not None:
                        try:
                            val = float(raw_price) / (10 ** minor_units if minor_units else 1)
                            if val > 0:
                                price_str = str(val)
                        except (ValueError, TypeError):
                            pass

                    permalink = p.get("permalink")

                    # Extract author from attributes or short description
                    author = None
                    for attr in p.get("attributes", []):
                        if any(k in attr.get("name", "").lower() for k in ["author", "skrywer", "auteur"]):
                            terms = attr.get("terms", [])
                            if terms:
                                author = terms[0].get("name")
                                break

                    item = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=name,
                        author=author,
                        price=price_str,
                        price_currency=currency,
                        listing_url=permalink,
                        condition="New",
                    )
                    self.save_item(item)

            except Exception as e:
                self.logger.error(f"Error fetching page {page}: {e}")
                break

        self.logger.info(f"Finished My Book Owl Namibia crawler. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="My Book Owl Namibia spider")
    parser.add_argument("--limit-pages", type=int, default=2)
    args = parser.parse_args()
    MybookowlNaSpider(limit_pages=args.limit_pages).run()
