from html_search_spider import HTMLSearchSpider

class NorthernIllinoisUniversityPressSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Northern Illinois University Press",
            base_url="https://niupress.niu.edu/",
            search_path="?q={query}",
            territory="United States",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = NorthernIllinoisUniversityPressSpider(limit_pages=1, limit_items=5)
    spider.run()
