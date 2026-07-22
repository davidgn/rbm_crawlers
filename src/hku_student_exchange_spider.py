from html_search_spider import HTMLSearchSpider

class HkuStudentExchangeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="HKU Student Exchange",
            base_url="https://www.hku.hk",
            search_path="exchange?q={query}",
            territory="Hong Kong",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="HKD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = HkuStudentExchangeSpider(limit_pages=1, limit_items=5)
    spider.run()
