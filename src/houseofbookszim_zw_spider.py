from woocommerce_spider import WooCommerceAPISpider

class HouseOfBooksZimSpider(WooCommerceAPISpider):
    """
    Spider for House of Books Zimbabwe.
    A leading online bookstore in Zimbabwe.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="House of Books Zimbabwe",
            base_url="https://houseofbookszim.com",
            territory="Zimbabwe",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = HouseOfBooksZimSpider(limit_pages=1)
    spider.run()
