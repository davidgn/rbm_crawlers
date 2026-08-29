from html_search_spider import HTMLSearchSpider

class SalkaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Salka",
            base_url="https://www.salka.is",
            search_path="search?q={query}",
            territory="Iceland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ISK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SalkaSpider(limit_pages=1, limit_items=5)
    spider.run()
