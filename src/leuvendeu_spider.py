from html_search_spider import HTMLSearchSpider

class LeuvendeuSpider(HTMLSearchSpider):
    """
    Spider for LeuVendeu (Brazil).
    A marketplace for used books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LeuVendeu",
            base_url="https://leuvendeu.com.br",
            search_path="livro/busca/?q={query}",
            selectors={
                'container': 'li.product', 
                'title': '.woocommerce-loop-product__title, .product_title',
                'link': 'a.woocommerce-LoopProduct-link',
                'price': '.price',
            },
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = LeuvendeuSpider(limit_pages=1)
    spider.run()
