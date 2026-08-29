from html_search_spider import HTMLSearchSpider

class WordOnTheWaterSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Word on the Water",
            base_url="https://www.wordonthewater.co.uk",
            search_path="search?q={query}",
            territory="UK",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="GBP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = WordOnTheWaterSpider(limit_pages=1, limit_items=5)
    spider.run()
