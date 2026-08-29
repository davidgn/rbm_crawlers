from html_search_spider import HTMLSearchSpider

class KingsCoOpSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Kings Co-op",
            base_url="https://kingsbookstore.ca",
            search_path="search?q={query}",
            territory="Canada",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CAD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KingsCoOpSpider(limit_pages=1, limit_items=5)
    spider.run()
