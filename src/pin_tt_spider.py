from html_search_spider import HTMLSearchSpider

class PinTtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Pin.tt",
            base_url="https://pin.tt",
            search_path="search?q={query}",
            territory="Trinidad and Tobago",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="TTD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = PinTtSpider(limit_pages=1, limit_items=5)
    spider.run()
