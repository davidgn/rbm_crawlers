from html_search_spider import HTMLSearchSpider

class WillhabenAtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="willhaben.at",
            base_url="https://www.willhaben.at",
            search_path="iad/kaufen-und-verkaufen/marktplatz?keyword={query}&category=73",
            territory="Austria",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = WillhabenAtSpider(limit_pages=1, limit_items=5)
    spider.run()
