from html_search_spider import HTMLSearchSpider

class BuchhandlungHeymannSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Buchhandlung Heymann",
            base_url="https://www.heymann-buecher.de",
            search_path="search?q={query}",
            territory="Germany",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BuchhandlungHeymannSpider(limit_pages=1, limit_items=5)
    spider.run()
