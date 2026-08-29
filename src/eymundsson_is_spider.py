from html_search_spider import HTMLSearchSpider

class EymundssonSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Eymundsson",
            base_url="https://www.eymundsson.is",
            search_path="search?q={query}",
            territory="Iceland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ISK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EymundssonSpider(limit_pages=1, limit_items=5)
    spider.run()
