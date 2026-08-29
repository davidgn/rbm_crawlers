from html_search_spider import HTMLSearchSpider

class EternaCadenciaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Eterna Cadencia",
            base_url="https://www.eternacadencia.com.ar",
            search_path="search?q={query}",
            territory="Argentina",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ARS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EternaCadenciaSpider(limit_pages=1, limit_items=5)
    spider.run()
