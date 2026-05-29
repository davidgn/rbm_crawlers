from woocommerce_spider import WooCommerceAPISpider

class HouseOfBooksZwSpider(WooCommerceAPISpider):
    """
    Spider for House of Books (Zimbabwe).
    Leading online bookstore in Harare.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="House of Books",
            base_url="https://houseofbookszim.com",
            territory="Zimbabwe",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = HouseOfBooksZwSpider(limit_pages=1)
    spider.run()
