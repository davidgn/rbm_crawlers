from html_search_spider import HTMLSearchSpider

class UpngBookExchangeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="UPNG Book Exchange",
            base_url="https://www.upng.ac.pg",
            search_path="exchange?q={query}",
            territory="Papua New Guinea",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PGK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UpngBookExchangeSpider(limit_pages=1, limit_items=5)
    spider.run()
