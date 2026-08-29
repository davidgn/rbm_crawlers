from html_search_spider import HTMLSearchSpider

class LibreriaFrancesaCrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libreria Francesa CR",
            base_url="https://libreriafrancesa.net",
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
    spider = LibreriaFrancesaCrSpider(limit_pages=1, limit_items=5)
    spider.run()
