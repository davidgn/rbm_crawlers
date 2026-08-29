from html_search_spider import HTMLSearchSpider

class CuestaCentroDelLibroSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Cuesta Centro del Libro",
            base_url="https://cuestalibrosonline.com",
            search_path="search?q={query}",
            territory="Dominican Republic",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="DOP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = CuestaCentroDelLibroSpider(limit_pages=1, limit_items=5)
    spider.run()
