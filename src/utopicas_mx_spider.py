from html_search_spider import HTMLSearchSpider

class UTopicasSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="U-Topicas",
            base_url="https://u-topicas.com",
            search_path="search?q={query}",
            territory="Mexico",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MXN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UTopicasSpider(limit_pages=1, limit_items=5)
    spider.run()
