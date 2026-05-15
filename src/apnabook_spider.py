from shopify_spider import ShopifyAPISpider

class ApnabookSpider(ShopifyAPISpider):
    def __init__(self, limit_pages=10):
        super().__init__(
            platform_name="Apnabook",
            base_url="https://apnabook.com",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = ApnabookSpider(limit_pages=1)
    spider.run()
