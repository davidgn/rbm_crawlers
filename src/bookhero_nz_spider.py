from shopify_spider import ShopifyAPISpider

class BookheroNzSpider(ShopifyAPISpider):
    """
    Spider for Book Hero (New Zealand).
    Currently the top-rated dedicated online bookstore in NZ.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Book Hero",
            base_url="https://bookhero.co.nz",
            territory="New Zealand",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookheroNzSpider(limit_pages=1)
    spider.run()
