from html_search_spider import HTMLSearchSpider

class LibrosccsVeSpider(HTMLSearchSpider):
    """Native spider for Libros.ccs (Venezuela)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Libros.ccs",
            base_url="https://librosccs.com",
            search_path="buscar?q={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Venezuela",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = LibrosccsVeSpider()
    spider.run()
