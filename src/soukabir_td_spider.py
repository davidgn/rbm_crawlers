import requests
from base_spider import BaseSpider
from models import BookListing

class SoukabirTdSpider(BaseSpider):
    """
    WooCommerce Store API spider for Soukabir Chad (soukabir.com) —
    e-commerce marketplace and bookstore in N'Djamena, Chad (prices in XAF / FCFA).
    Chad outbound M-Bag origin (8.39 / 30 kg).
    """
    BASE_URL = "https://soukabir.com"
    CATEGORY_IDS = [169, 218, 551]  # Librairie et papeterie, Livres

    def __init__(self, limit_pages: int = 10):
        super().__init__(platform_name="Soukabir Chad", territory="Chad")
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
        self.logger.info("Starting Soukabir Chad crawler.")
        seen_ids = set()

        for cat_id in self.CATEGORY_IDS:
            for page in range(1, self.limit_pages + 1):
                api_url = f"{self.BASE_URL}/wp-json/wc/store/products?category={cat_id}&page={page}&per_page=20"
                self.logger.info(f"Fetching category {cat_id} page {page}: {api_url}")
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

                        # Extract price in XAF
                        prices_info = p.get("prices", {})
                        raw_price = prices_info.get("price")
                        minor_units = prices_info.get("currency_minor_unit", 0)
                        currency = prices_info.get("currency_code", "XAF")

                        price_str = None
                        if raw_price is not None:
                            try:
                                val = float(raw_price) / (10 ** minor_units if minor_units else 1)
                                if val > 0:
                                    price_str = str(val)
                            except (ValueError, TypeError):
                                pass

                        permalink = p.get("permalink")

                        # Extract author from attributes or tags if available
                        author = None
                        for attr in p.get("attributes", []):
                            if "auteur" in attr.get("name", "").lower() or "author" in attr.get("name", "").lower():
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
                    self.logger.error(f"Error fetching category {cat_id} page {page}: {e}")
                    break

        self.logger.info(f"Finished Soukabir Chad crawler. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Soukabir Chad spider")
    parser.add_argument("--limit-pages", type=int, default=2)
    args = parser.parse_args()
    SoukabirTdSpider(limit_pages=args.limit_pages).run()
