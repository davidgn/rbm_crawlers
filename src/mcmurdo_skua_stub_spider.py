from html_search_spider import HTMLSearchSpider

class McMurdoSkuaStubSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="McMurdo Skua Intranet",
            base_url="http://mcmurdo.local",
            search_path="skua/search?q={query}",
            territory="Antarctica",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = McMurdoSkuaStubSpider(limit_pages=1, limit_items=5)
    spider.run()
