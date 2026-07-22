from woocommerce_spider import WooCommerceAPISpider

class WatanbooksSpider(WooCommerceAPISpider):
    """
    Spider for Watan Books (Palestine).
    First-party Palestinian online bookstore; not a third-party marketplace.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Watan Books",
            base_url="https://watanbooks.com",
            limit_pages=limit_pages
        )
        self.territory = "Palestine"

if __name__ == "__main__":
    spider = WatanbooksSpider(limit_pages=1)
    spider.run()
