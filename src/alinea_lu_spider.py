from html_search_spider import HTMLSearchSpider

class AlineaLuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Alinea LU",
            base_url="https://alinea.lu",
            search_path="search?q={query}",
            territory="Luxembourg",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AlineaLuSpider(limit_pages=1, limit_items=5)
    spider.run()
