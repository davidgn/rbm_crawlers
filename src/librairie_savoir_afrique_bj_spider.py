from html_search_spider import HTMLSearchSpider

class LibrairieSavoirAfriqueBjSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librairie Savoir d'Afrique",
            base_url="https://savoirdafrique.bj",
            search_path="?s={query}",
            territory="Benin",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="XOF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibrairieSavoirAfriqueBjSpider(limit_pages=1, limit_items=5)
    spider.run()
