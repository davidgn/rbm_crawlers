from woocommerce_spider import WooCommerceAPISpider

class GranmorrisonPaSpider(WooCommerceAPISpider):
    """
    Spider for Gran Morrison (Panama).
    A department-style store with a significant book section.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Gran Morrison",
            base_url="https://www.granmorrison.com",
            territory="Panama",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = GranmorrisonPaSpider(limit_pages=1)
    spider.run()
