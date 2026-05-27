from shopify_spider import ShopifyAPISpider

class SdqleeDoSpider(ShopifyAPISpider):
    """
    Spider for SDQLee (Dominican Republic).
    Uses the Shopify API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SDQLee",
            base_url="https://sdqlee.com",
            territory="Dominican Republic",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = SdqleeDoSpider(limit_pages=1)
    spider.run()
