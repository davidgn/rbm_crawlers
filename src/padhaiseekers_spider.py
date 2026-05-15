from shopify_spider import ShopifyAPISpider

class PadhaiseekersSpider(ShopifyAPISpider):
    def __init__(self, limit_pages=10):
        super().__init__(
            platform_name="Padhaiseekers",
            base_url="https://padhaiseekers.com",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = PadhaiseekersSpider(limit_pages=1)
    spider.run()
