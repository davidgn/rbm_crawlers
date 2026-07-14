from html_search_spider import HTMLSearchSpider

class ZygaBooksMvSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Zyga Books",
            base_url="https://zygaexim.com",
            search_path="?s={query}",
            territory="Maldives",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MVR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ZygaBooksMvSpider(limit_pages=1, limit_items=5)
    spider.run()
