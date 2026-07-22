from html_search_spider import HTMLSearchSpider

class UwiStudentExchangeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="UWI Student Exchange (Mona)",
            base_url="https://www.mona.uwi.edu",
            search_path="exchange?q={query}",
            territory="Jamaica",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JMD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UwiStudentExchangeSpider(limit_pages=1, limit_items=5)
    spider.run()
