from html_search_spider import HTMLSearchSpider

class BooksKinokuniyaSgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Books Kinokuniya SG",
            base_url="https://kinokuniya.com.sg",
            search_path="search?q={query}",
            territory="Singapore",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SGD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BooksKinokuniyaSgSpider(limit_pages=1, limit_items=5)
    spider.run()
