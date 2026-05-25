from woocommerce_spider import WooCommerceAPISpider

class LivrolivreBrSpider(WooCommerceAPISpider):
    """
    Spider for Livro Livre (Brazil).
    A marketplace for individuals to sell used books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Livro Livre",
            base_url="https://livrolivreoficial.com.br",
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = LivrolivreBrSpider(limit_pages=1)
    spider.run()
