from shopify_spider import ShopifyAPISpider

class LaberintoPrSpider(ShopifyAPISpider):
    """
    Spider for Librería Laberinto (Puerto Rico).
    Uses the Shopify API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librería Laberinto",
            base_url="https://librerialaberintopr.com",
            territory="Puerto Rico",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = LaberintoPrSpider(limit_pages=1)
    spider.run()
