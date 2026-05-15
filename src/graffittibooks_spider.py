from woocommerce_spider import WooCommerceAPISpider

class GraffittiBooksSpider(WooCommerceAPISpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="GraffittiBooks",
            base_url="https://graffittibooks.com",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = GraffittiBooksSpider(limit_pages=2)
    spider.run()
