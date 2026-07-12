from html_search_spider import HTMLSearchSpider

class GabonLivresSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Gabon Livres",
            base_url="https://gabonlivres.com",
            search_path="?s={query}",
            territory="Gabon",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="XAF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = GabonLivresSpider(limit_pages=1, limit_items=5)
    spider.run()
