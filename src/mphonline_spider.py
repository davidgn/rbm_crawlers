from shopify_spider import ShopifyAPISpider

class MphonlineSpider(ShopifyAPISpider):
    """
    Spider for MPH Online (Malaysia).
    One of the leading bookstore chains in Malaysia.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MPH Online",
            base_url="https://mphonline.com",
            territory="Malaysia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = MphonlineSpider(limit_pages=1)
    spider.run()
