from html_search_spider import HTMLSearchSpider

class McmurdoStationBookExchangeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="McMurdo Station Book Exchange",
            base_url="https://www.usap.gov",
            search_path="mcmurdo-exchange?q={query}",
            territory="Antarctica",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = McmurdoStationBookExchangeSpider(limit_pages=1, limit_items=5)
    spider.run()
