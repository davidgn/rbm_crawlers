from html_search_spider import HTMLSearchSpider

class LibrariileHumanitasSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librariile Humanitas",
            base_url="https://www.libhumanitas.ro",
            search_path="search?q={query}",
            territory="Romania",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="RON",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibrariileHumanitasSpider(limit_pages=1, limit_items=5)
    spider.run()
