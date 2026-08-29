from html_search_spider import HTMLSearchSpider

class KinokuniyaMySpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Kinokuniya MY",
            base_url="https://www.kinokuniya.com.my",
            search_path="search?q={query}",
            territory="Malaysia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MYR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KinokuniyaMySpider(limit_pages=1, limit_items=5)
    spider.run()
