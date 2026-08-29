from html_search_spider import HTMLSearchSpider

class BookAndBeerSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Book and Beer",
            base_url="https://bookandbeer.com",
            search_path="search?q={query}",
            territory="Japan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JPY",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BookAndBeerSpider(limit_pages=1, limit_items=5)
    spider.run()
