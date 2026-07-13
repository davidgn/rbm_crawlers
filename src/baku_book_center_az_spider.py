from html_search_spider import HTMLSearchSpider

class BakuBookCenterAzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Baku Book Center",
            base_url="https://bakubookcenter.az",
            search_path="?s={query}",
            territory="Azerbaijan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AZN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BakuBookCenterAzSpider(limit_pages=1, limit_items=5)
    spider.run()
