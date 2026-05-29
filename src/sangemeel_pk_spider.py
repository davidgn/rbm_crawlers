from shopify_spider import ShopifyAPISpider

class SangemeelPkSpider(ShopifyAPISpider):
    """
    Spider for Sang-e-Meel (Pakistan).
    Premier publisher and bookseller for Urdu literature and scholarly works.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Sang-e-Meel",
            base_url="https://sangemeel.shop",
            territory="Pakistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = SangemeelPkSpider(limit_pages=1)
    spider.run()
