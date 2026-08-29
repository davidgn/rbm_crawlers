from html_search_spider import HTMLSearchSpider

class LibreriaInternacionalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libreria Internacional",
            base_url="https://www.libreriainternacional.com",
            search_path="search?q={query}",
            territory="Costa Rica",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CRC",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibreriaInternacionalSpider(limit_pages=1, limit_items=5)
    spider.run()
