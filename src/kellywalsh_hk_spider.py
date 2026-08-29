from html_search_spider import HTMLSearchSpider

class KellyAndWalshSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Kelly and Walsh",
            base_url="https://kellyandwalsh.com",
            search_path="search?q={query}",
            territory="Hong Kong",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="HKD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KellyAndWalshSpider(limit_pages=1, limit_items=5)
    spider.run()
