from html_search_spider import HTMLSearchSpider

class MitPressBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="MIT Press Bookstore",
            base_url="https://mitpressbookstore.mit.edu",
            search_path="search/site/{query}",
            territory="United States",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

    def run(self, search_term=None):
        self.logger.warning("Permanently blocked by Akamai Bot Protection. Skipping.")

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MitPressBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()

