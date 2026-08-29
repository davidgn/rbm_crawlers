from html_search_spider import HTMLSearchSpider

class PenguinLibrosMxSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Penguin Libros MX",
            base_url="https://www.penguinlibros.com/mx",
            search_path="search?q={query}",
            territory="Mexico",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MXN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = PenguinLibrosMxSpider(limit_pages=1, limit_items=5)
    spider.run()
