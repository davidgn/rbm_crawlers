from html_search_spider import HTMLSearchSpider

class LibreriaAlquimistaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libreria Alquimista",
            base_url="https://alquimista.com.bo",
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
    spider = LibreriaAlquimistaSpider(limit_pages=1, limit_items=5)
    spider.run()
