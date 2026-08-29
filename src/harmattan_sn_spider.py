from html_search_spider import HTMLSearchSpider

class LHarmattanSnSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="L Harmattan SN",
            base_url="https://www.harmattansenegal.com",
            search_path="search?q={query}",
            territory="Senegal",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="XOF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LHarmattanSnSpider(limit_pages=1, limit_items=5)
    spider.run()
