from woocommerce_spider import WooCommerceAPISpider

class BookJungleJmSpider(WooCommerceAPISpider):
    """
    Spider for The Book Jungle Jamaica.
    A leading online bookstore in Jamaica.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="The Book Jungle Jamaica",
            base_url="https://bookjunglejamaica.com",
            territory="Jamaica",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookJungleJmSpider(limit_pages=1)
    spider.run()
