from woocommerce_spider import WooCommerceAPISpider

class BeautifulBooksGySpider(WooCommerceAPISpider):
    """
    Spider for Beautiful Books (Guyana).
    A leading online bookstore in Guyana specializing in Christian literature.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Beautiful Books",
            base_url="https://beautifulbooks.gy",
            territory="Guyana",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BeautifulBooksGySpider(limit_pages=1)
    spider.run()
