from html_search_spider import HTMLSearchSpider

class LibreriasLecturaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librerias Lectura",
            base_url="https://libreriaslectura.com",
            search_path="search?q={query}",
            territory="Bolivia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BOB",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibreriasLecturaSpider(limit_pages=1, limit_items=5)
    spider.run()
