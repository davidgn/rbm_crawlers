from html_search_spider import HTMLSearchSpider

class ShorftoSySpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Shorfto",
            base_url="https://sh.sy",
            search_path="?s={query}",
            territory="Syria",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SYP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ShorftoSySpider(limit_pages=1, limit_items=5)
    spider.run()
