from html_search_spider import HTMLSearchSpider

class ZangakBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Zangak Bookstore",
            base_url="https://zangakbookstore.am",
            search_path="search?q={query}",
            territory="Armenia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AMD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ZangakBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()
