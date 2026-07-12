from html_search_spider import HTMLSearchSpider

class TheologicalCollegeNorthernNigeriaTcnnSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="TheologicalCollegeofNorthernNigeriaTCNN",
            base_url="https://tcnn.edu.ng/",
            search_path="?q={query}",
            territory="Nigeria",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NGN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TheologicalCollegeNorthernNigeriaTcnnSpider(limit_pages=1, limit_items=5)
    spider.run()
