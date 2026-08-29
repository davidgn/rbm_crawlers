from html_search_spider import HTMLSearchSpider

class AlRoyaBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Al Roya Bookstore",
            base_url="https://www.alroya.om",
            search_path="search?q={query}",
            territory="Oman",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="OMR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AlRoyaBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()
