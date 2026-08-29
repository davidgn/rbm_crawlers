from html_search_spider import HTMLSearchSpider

class ElephantsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Elephants",
            base_url="https://www.elephants.com.hk",
            search_path="search?q={query}",
            territory="Hong Kong",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="HKD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ElephantsSpider(limit_pages=1, limit_items=5)
    spider.run()
