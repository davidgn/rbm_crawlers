from html_search_spider import HTMLSearchSpider

class BrickLaneBookshopSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Brick Lane Bookshop",
            base_url="https://bricklanebookshop.org",
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
    spider = BrickLaneBookshopSpider(limit_pages=1, limit_items=5)
    spider.run()
