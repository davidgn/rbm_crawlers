from html_search_spider import HTMLSearchSpider

class MandalaBookPointSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Mandala Book Point",
            base_url="https://mandalabookpoint.com",
            search_path="search?q={query}",
            territory="Nepal",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NPR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MandalaBookPointSpider(limit_pages=1, limit_items=5)
    spider.run()
