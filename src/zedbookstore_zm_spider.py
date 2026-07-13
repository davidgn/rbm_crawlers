from html_search_spider import HTMLSearchSpider

class ZedbookstoreZmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="ZedBookStore",
            base_url="https://zedbookstore.online",
            search_path="?s={query}",
            territory="Zambia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ZMW",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ZedbookstoreZmSpider(limit_pages=1, limit_items=5)
    spider.run()
