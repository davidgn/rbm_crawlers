from html_search_spider import HTMLSearchSpider

class KemikGtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Kemik GT",
            base_url="https://www.kemik.gt",
            search_path="search?q={query}",
            territory="Guatemala",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="GTQ",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KemikGtSpider(limit_pages=1, limit_items=5)
    spider.run()
