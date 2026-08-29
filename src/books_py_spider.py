from html_search_spider import HTMLSearchSpider

class BooksPySpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Books PY",
            base_url="https://books.com.py",
            search_path="search?q={query}",
            territory="Paraguay",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PYG",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BooksPySpider(limit_pages=1, limit_items=5)
    spider.run()
