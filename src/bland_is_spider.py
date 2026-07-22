from html_search_spider import HTMLSearchSpider

class BlandIsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bland.is",
            base_url="https://bland.is",
            search_path="classifieds/search?q={query}",
            territory="Iceland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ISK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BlandIsSpider(limit_pages=1, limit_items=5)
    spider.run()
