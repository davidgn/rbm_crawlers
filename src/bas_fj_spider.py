from html_search_spider import HTMLSearchSpider

class BasFjSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bas Fiji",
            base_url="https://www.bas.com.fj",
            search_path="search?q={query}",
            territory="Fiji",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="FJD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BasFjSpider(limit_pages=1, limit_items=5)
    spider.run()
