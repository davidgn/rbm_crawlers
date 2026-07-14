from html_search_spider import HTMLSearchSpider

class LothusCvSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Livraria Lóthus",
            base_url="https://lothus.cv",
            search_path="?s={query}",
            territory="Cape Verde",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CVE",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LothusCvSpider(limit_pages=1, limit_items=5)
    spider.run()
