from html_search_spider import HTMLSearchSpider

class OutlandNoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Outland NO",
            base_url="https://www.outland.no",
            search_path="search?q={query}",
            territory="Norway",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NOK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = OutlandNoSpider(limit_pages=1, limit_items=5)
    spider.run()
