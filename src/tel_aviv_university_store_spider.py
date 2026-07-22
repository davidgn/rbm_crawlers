from html_search_spider import HTMLSearchSpider

class TelAvivUniversityStoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Tel Aviv University Store",
            base_url="https://english.tau.ac.il",
            search_path="store?q={query}",
            territory="Israel",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ILS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TelAvivUniversityStoreSpider(limit_pages=1, limit_items=5)
    spider.run()
