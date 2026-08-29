from html_search_spider import HTMLSearchSpider

class PolitikensBoghalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Politikens Boghal",
            base_url="https://politikensboghal.dk",
            search_path="search?q={query}",
            territory="Denmark",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="DKK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = PolitikensBoghalSpider(limit_pages=1, limit_items=5)
    spider.run()
