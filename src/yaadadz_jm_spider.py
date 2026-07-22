from html_search_spider import HTMLSearchSpider

class YaadAdzJmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="YaadAdz",
            base_url="https://www.yaadadz.com",
            search_path="search?q={query}",
            territory="Jamaica",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JMD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = YaadAdzJmSpider(limit_pages=1, limit_items=5)
    spider.run()
