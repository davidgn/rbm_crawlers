from shopify_spider import ShopifyAPISpider

class DarelfikrSpider(ShopifyAPISpider):
    """
    Spider for Dar El Fikr (Syria).
    High-value scholarly/Islamic inventory.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Dar El Fikr",
            base_url="https://darelfikr.net",
            limit_pages=limit_pages,
            limit_items=limit_items
        )
        self.territory = "Syria"

    def _parse_product(self, product: dict):
        # Override to handle potential currency differences
        # But Syria often uses global currencies or Shopify defaults
        super()._parse_product(product)
        # Update price currency to SYP if applicable, or keep as detected
        # Shopify usually handles this in the API.

if __name__ == "__main__":
    import argparse
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    DarelfikrSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
