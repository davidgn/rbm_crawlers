from html_search_spider import HTMLSearchSpider

class CyphomaMqSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Cyphoma",
            base_url="https://www.cyphoma.com",
            search_path="martinique/recherche?q={query}",
            territory="Martinique",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = CyphomaMqSpider(limit_pages=1, limit_items=5)
    spider.run()
