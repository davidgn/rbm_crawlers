from html_search_spider import HTMLSearchSpider

class BargainbooksZaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bargain Books",
            base_url="https://www.bargainbooks.co.za",
            search_path="search?q={query}",
            territory="South Africa",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ZAR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BargainbooksZaSpider(limit_pages=1, limit_items=5)
    spider.run()
