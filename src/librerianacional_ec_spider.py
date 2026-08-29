from html_search_spider import HTMLSearchSpider

class LibreriaNacionalEcSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libreria Nacional EC",
            base_url="https://www.librerianacional.com.ec",
            search_path="search?q={query}",
            territory="Ecuador",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibreriaNacionalEcSpider(limit_pages=1, limit_items=5)
    spider.run()
