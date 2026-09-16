from html_search_spider import HTMLSearchSpider

class LibreriaInternacionalCrSpider(HTMLSearchSpider):
    """Native spider for Librería Internacional (Costa Rica)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Librería Internacional",
            base_url="https://www.libreriainternacional.com/catalogsearch/result/",
            search_path="?q={query}",
            selectors={'container': '.product-item', 'title': '.product-item-link', 'price': '.price'},
            territory="Costa Rica",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = LibreriaInternacionalCrSpider()
    spider.run()
