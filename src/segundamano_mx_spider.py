from html_search_spider import HTMLSearchSpider

class SegundamanoMxSpider(HTMLSearchSpider):
    """Spider for Segundamano (Mexico)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Segundamano",
            base_url="https://www.segundamano.mx",
            search_path="search?q={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mexico",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = SegundamanoMxSpider()
    spider.run()
