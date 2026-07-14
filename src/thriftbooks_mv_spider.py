from html_search_spider import HTMLSearchSpider

class ThriftbooksMvSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Thriftbooks.mv",
            base_url="https://www.instagram.com/thriftbooks.mv",
            search_path="?q={query}",
            territory="Maldives",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MVR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ThriftbooksMvSpider(limit_pages=1, limit_items=5)
    spider.run()
