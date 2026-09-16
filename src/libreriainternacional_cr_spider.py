from html_search_spider import HTMLSearchSpider

class LibreriaInternacionalCrSpider(HTMLSearchSpider):
    """Native spider for Librería Internacional (Costa Rica)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Librería Internacional",
            base_url="https://www.libreriainternacional.com",
            search_path="search?q={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Costa Rica",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = LibreriaInternacionalCrSpider()
    spider.run()
