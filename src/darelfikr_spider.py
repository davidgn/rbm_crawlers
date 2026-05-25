from shopify_spider import ShopifyAPISpider

class DarelfikrSpider(ShopifyAPISpider):
    """
    Spider for Dar El Fikr (Syria).
    High-value scholarly/Islamic inventory.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Dar El Fikr",
            base_url="https://darelfikr.net",
            limit_pages=limit_pages
        )
        self.territory = "Syria"

    def _parse_product(self, product: dict):
        # Override to handle potential currency differences
        # But Syria often uses global currencies or Shopify defaults
        super()._parse_product(product)
        # Update price currency to SYP if applicable, or keep as detected
        # Shopify usually handles this in the API.

if __name__ == "__main__":
    spider = DarelfikrSpider(limit_pages=1)
    spider.run()
