from html_search_spider import HTMLSearchSpider

class LibrexRoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librex RO",
            base_url="https://www.librex.ro",
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
    spider = LibrexRoSpider(limit_pages=1, limit_items=5)
    spider.run()
