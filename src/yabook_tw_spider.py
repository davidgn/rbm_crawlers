from html_search_spider import HTMLSearchSpider

class YabookTwSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="YaBook Secondhand Bookstore",
            base_url="https://yabook.com.tw",
            search_path="?s={query}",
            territory="Taiwan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="TWD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = YabookTwSpider(limit_pages=1, limit_items=5)
    spider.run()
