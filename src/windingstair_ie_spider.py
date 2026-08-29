from html_search_spider import HTMLSearchSpider

class TheWindingStairSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="The Winding Stair",
            base_url="https://winding-stair.com",
            search_path="search?q={query}",
            territory="Ireland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TheWindingStairSpider(limit_pages=1, limit_items=5)
    spider.run()
