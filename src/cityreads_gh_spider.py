from shopify_spider import ShopifyAPISpider

class CityReadsGhSpider(ShopifyAPISpider):
    """
    Spider for City Reads Bookstore (Ghana).
    A modern indie bookstore in Accra.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="City Reads Bookstore",
            base_url="https://cityreadsbookstore.com",
            territory="Ghana",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = CityReadsGhSpider(limit_pages=1)
    spider.run()
