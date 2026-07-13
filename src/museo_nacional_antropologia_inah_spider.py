from html_search_spider import HTMLSearchSpider

class MuseoNacionalAntropologiaInahSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="MuseoNacionaldeAntropologiaINAH",
            base_url="https://mna.inah.gob.mx/",
            search_path="?q={query}",
            territory="Mexico",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MXN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MuseoNacionalAntropologiaInahSpider(limit_pages=1, limit_items=5)
    spider.run()
