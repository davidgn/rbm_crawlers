from html_search_spider import HTMLSearchSpider

class EditoraUniversitariaUniversidadeDeSantiagoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Editora Universitária Universidade de Santiago",
            base_url="https://us.edu.cv/",
            search_path="?q={query}",
            territory="Cape Verde",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CVE",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EditoraUniversitariaUniversidadeDeSantiagoSpider(limit_pages=1, limit_items=5)
    spider.run()
