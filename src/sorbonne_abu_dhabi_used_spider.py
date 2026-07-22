from html_search_spider import HTMLSearchSpider

class SorbonneAbuDhabiUsedSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Sorbonne Abu Dhabi Marketplace",
            base_url="https://www.sorbonne.ae",
            search_path="marketplace?q={query}",
            territory="United Arab Emirates",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AED",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SorbonneAbuDhabiUsedSpider(limit_pages=1, limit_items=5)
    spider.run()
