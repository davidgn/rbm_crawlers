from html_search_spider import HTMLSearchSpider

class CarousellSgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Carousell SG",
            base_url="https://www.carousell.sg",
            search_path="search/{query}?category_id=1130",
            territory="Singapore",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SGD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = CarousellSgSpider(limit_pages=1, limit_items=5)
    spider.run()
