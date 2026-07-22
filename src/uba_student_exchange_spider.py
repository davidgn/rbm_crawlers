from html_search_spider import HTMLSearchSpider

class UbaStudentExchangeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="UBA Student Exchange (Buenos Aires)",
            base_url="https://www.uba.ar",
            search_path="exchange?q={query}",
            territory="Argentina",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ARS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UbaStudentExchangeSpider(limit_pages=1, limit_items=5)
    spider.run()
