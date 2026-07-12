from html_search_spider import HTMLSearchSpider

class SimmaIqSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Simma",
            base_url="https://simma.iq",
            search_path="?s={query}",
            territory="Iraq",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="IQD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SimmaIqSpider(limit_pages=1, limit_items=5)
    spider.run()
