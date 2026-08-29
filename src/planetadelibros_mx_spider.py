from html_search_spider import HTMLSearchSpider

class PlanetadelibrosMexicoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="PlanetadeLibros Mexico",
            base_url="https://www.planetadelibros.com.mx",
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
    spider = PlanetadelibrosMexicoSpider(limit_pages=1, limit_items=5)
    spider.run()
