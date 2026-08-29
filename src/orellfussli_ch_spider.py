from html_search_spider import HTMLSearchSpider

class OrellFussliSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Orell Fussli",
            base_url="https://www.orellfuessli.ch",
            search_path="search?q={query}",
            territory="Switzerland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CHF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = OrellFussliSpider(limit_pages=1, limit_items=5)
    spider.run()
