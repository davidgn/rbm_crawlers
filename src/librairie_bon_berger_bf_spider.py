from html_search_spider import HTMLSearchSpider

class LibrairieBonBergerBfSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librairie Bon Berger",
            base_url="https://librairiebonberger.com",
            search_path="?s={query}",
            territory="Burkina Faso",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="XOF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibrairieBonBergerBfSpider(limit_pages=1, limit_items=5)
    spider.run()
