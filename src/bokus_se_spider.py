from html_search_spider import HTMLSearchSpider

class BokusSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bokus",
            base_url="https://www.bokus.com",
            search_path="search?q={query}",
            territory="Sweden",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SEK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BokusSpider(limit_pages=1, limit_items=5)
    spider.run()
