from woocommerce_spider import WooCommerceAPISpider

class KitabwalahSpider(WooCommerceAPISpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="Kitabwalah",
            base_url="https://kitabwalah.com",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = KitabwalahSpider(limit_pages=2)
    spider.run()
