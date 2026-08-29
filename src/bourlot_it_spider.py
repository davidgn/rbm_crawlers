from html_search_spider import HTMLSearchSpider

class AntiquariaBourlotSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Antiquaria Bourlot",
            base_url="https://bourlot.it",
            search_path="search?q={query}",
            territory="Italy",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AntiquariaBourlotSpider(limit_pages=1, limit_items=5)
    spider.run()
