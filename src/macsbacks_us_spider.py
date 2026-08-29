from html_search_spider import HTMLSearchSpider

class MacsBacksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Macs Backs",
            base_url="https://www.macsbacks.com",
            search_path="search?q={query}",
            territory="USA",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MacsBacksSpider(limit_pages=1, limit_items=5)
    spider.run()
