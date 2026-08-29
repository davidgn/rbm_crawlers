from html_search_spider import HTMLSearchSpider

class SanminBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Sanmin Bookstore",
            base_url="https://www.sanmin.com.tw",
            search_path="search?q={query}",
            territory="Taiwan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="TWD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SanminBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()
