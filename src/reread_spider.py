from shopify_spider import ShopifyAPISpider

class ReReadSpider(ShopifyAPISpider):
    def __init__(self, limit_pages=10):
        super().__init__(
            platform_name="ReRead",
            base_url="https://reread.in",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = ReReadSpider(limit_pages=1)
    spider.run()
