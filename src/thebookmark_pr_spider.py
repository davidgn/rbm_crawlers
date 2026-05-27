from shopify_spider import ShopifyAPISpider

class TheBookmarkPrSpider(ShopifyAPISpider):
    """
    Spider for The Bookmark PR (Puerto Rico).
    Uses the Shopify API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="The Bookmark PR",
            base_url="https://thebookmarkpr.com",
            territory="Puerto Rico",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = TheBookmarkPrSpider(limit_pages=1)
    spider.run()
