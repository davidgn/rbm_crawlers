from html_search_spider import HTMLSearchSpider

class DominovicHrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Dominovic HR",
            base_url="https://www.knjizara-dominovic.hr",
            search_path="search?q={query}",
            territory="Croatia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = DominovicHrSpider(limit_pages=1, limit_items=5)
    spider.run()
