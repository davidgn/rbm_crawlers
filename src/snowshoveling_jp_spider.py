from html_search_spider import HTMLSearchSpider

class SnowShovelingSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Snow Shoveling",
            base_url="https://snow-shoveling.jp",
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
    spider = SnowShovelingSpider(limit_pages=1, limit_items=5)
    spider.run()
