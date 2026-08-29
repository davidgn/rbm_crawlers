from html_search_spider import HTMLSearchSpider

class KinokuniyaJpSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Kinokuniya JP",
            base_url="https://www.kinokuniya.co.jp",
            search_path="search?q={query}",
            territory="Japan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JPY",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KinokuniyaJpSpider(limit_pages=1, limit_items=5)
    spider.run()
