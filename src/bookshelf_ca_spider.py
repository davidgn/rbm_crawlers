from html_search_spider import HTMLSearchSpider

class TheBookshelfGuelphSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="The Bookshelf Guelph",
            base_url="https://bookshelf.ca",
            search_path="search?q={query}",
            territory="Canada",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CAD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TheBookshelfGuelphSpider(limit_pages=1, limit_items=5)
    spider.run()
