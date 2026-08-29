from html_search_spider import HTMLSearchSpider

class BooksKinokuniyaUaeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Books Kinokuniya UAE",
            base_url="https://uae.kinokuniya.com",
            search_path="search?q={query}",
            territory="UAE",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AED",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BooksKinokuniyaUaeSpider(limit_pages=1, limit_items=5)
    spider.run()
