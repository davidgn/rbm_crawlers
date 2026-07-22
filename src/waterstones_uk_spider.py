from html_search_spider import HTMLSearchSpider

class WaterstonesUkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Waterstones Marketplace",
            base_url="https://www.waterstones.com",
            search_path="books/search/term/{query}",
            territory="United Kingdom",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="GBP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = WaterstonesUkSpider(limit_pages=1, limit_items=5)
    spider.run()
