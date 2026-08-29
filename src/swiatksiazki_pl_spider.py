from html_search_spider import HTMLSearchSpider

class SwiatKsiazkiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Swiat Ksiazki",
            base_url="https://www.swiatksiazki.pl",
            search_path="search?q={query}",
            territory="Poland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PLN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SwiatKsiazkiSpider(limit_pages=1, limit_items=5)
    spider.run()
