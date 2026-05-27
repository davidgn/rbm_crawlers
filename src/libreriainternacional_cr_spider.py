from html_search_spider import HTMLSearchSpider

class LibreriainternacionalCrSpider(HTMLSearchSpider):
    """
    Spider for Librería Internacional (Costa Rica).
    The largest and most modern bookstore chain in Costa Rica.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librería Internacional",
            base_url="https://www.libreriainternacional.com",
            search_path="catalogsearch/result/?q={query}&p={page}",
            selectors={
                'container': '.item.product.product-item', 
                'title': '.product-item-link',
                'link': '.product-item-link',
                'price': '.price-wrapper',
            },
            territory="Costa Rica",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = LibreriainternacionalCrSpider(limit_pages=1)
    spider.run()
