from html_search_spider import HTMLSearchSpider

class ProsperoHuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Prospero HU",
            base_url="https://www.prospero.hu",
            search_path="search?q={query}",
            territory="Hungary",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="HUF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ProsperoHuSpider(limit_pages=1, limit_items=5)
    spider.run()
