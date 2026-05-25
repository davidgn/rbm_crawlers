from shopify_spider import ShopifyAPISpider

class DarfergianiSpider(ShopifyAPISpider):
    """
    Spider for Dar Fergiani (Libya).
    The most authoritative source for Libyan history and modern literature.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Dar Fergiani",
            base_url="https://fergianibooks.com",
            limit_pages=limit_pages
        )
        self.territory = "Libya"

if __name__ == "__main__":
    spider = DarfergianiSpider(limit_pages=1)
    spider.run()
