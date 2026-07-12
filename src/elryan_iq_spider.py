from html_search_spider import HTMLSearchSpider

class ElryanIqSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Elryan Iraq",
            base_url="https://www.elryan.com",
            search_path="en/c/books?q={query}",
            territory="Iraq",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="IQD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ElryanIqSpider(limit_pages=1, limit_items=5)
    spider.run()
