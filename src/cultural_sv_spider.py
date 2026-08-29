from html_search_spider import HTMLSearchSpider

class LibreriaCulturalSvSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libreria Cultural SV",
            base_url="https://www.libreriacultural.com",
            search_path="search?q={query}",
            territory="El Salvador",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibreriaCulturalSvSpider(limit_pages=1, limit_items=5)
    spider.run()
