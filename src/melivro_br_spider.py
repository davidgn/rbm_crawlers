from woocommerce_spider import WooCommerceAPISpider

class MelivroBrSpider(WooCommerceAPISpider):
    """
    Spider for MeLivro (Brazil).
    A marketplace for used books from individuals.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MeLivro",
            base_url="https://melivro.com.br",
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = MelivroBrSpider(limit_pages=1)
    spider.run()
