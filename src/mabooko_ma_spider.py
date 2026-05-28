from woocommerce_spider import WooCommerceAPISpider

class MabookoMaSpider(WooCommerceAPISpider):
    """
    Spider for Mabooko (Morocco).
    Focuses on original English and French books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Mabooko",
            base_url="https://mabooko.com",
            territory="Morocco",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = MabookoMaSpider(limit_pages=1)
    spider.run()
