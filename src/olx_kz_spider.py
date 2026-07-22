from html_search_spider import HTMLSearchSpider

class OlxKzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="OLX KZ",
            base_url="https://www.olx.kz",
            search_path="hobbi-otdyh-i-sport/knigi-zhurnaly/q-{query}/",
            territory="Kazakhstan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KZT",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = OlxKzSpider(limit_pages=1, limit_items=5)
    spider.run()
