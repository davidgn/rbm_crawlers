from html_search_spider import HTMLSearchSpider

class GnbookstoreTmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="GN Bookstore",
            base_url="https://gnbookstore.com.tm",
            search_path="?s={query}",
            territory="Turkmenistan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="TMT",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = GnbookstoreTmSpider(limit_pages=1, limit_items=5)
    spider.run()
