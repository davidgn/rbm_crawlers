from html_search_spider import HTMLSearchSpider

class AvenueBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Avenue Bookstore",
            base_url="https://avenuebookstore.com.au",
            search_path="search?q={query}",
            territory="Australia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AUD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AvenueBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()
