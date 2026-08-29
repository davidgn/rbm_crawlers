from html_search_spider import HTMLSearchSpider

class BooksAtCafeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Books at Cafe",
            base_url="https://booksatcafe.com",
            search_path="search?q={query}",
            territory="Jordan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JOD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BooksAtCafeSpider(limit_pages=1, limit_items=5)
    spider.run()
