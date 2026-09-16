from html_search_spider import HTMLSearchSpider

class LibrosccsVeSpider(HTMLSearchSpider):
    """Native spider for Libros.ccs (Venezuela)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Libros.ccs",
            base_url="https://librosccs.com",
            search_path="search?q={query}&page={page}",
            selectors={'container': '.card-wrapper', 'title': 'h3.card__heading a', 'price': '.price-item'},
            territory="Venezuela",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = LibrosccsVeSpider()
    spider.run()
