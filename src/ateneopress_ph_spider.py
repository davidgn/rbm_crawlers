from html_search_spider import HTMLSearchSpider

class AteneoPressSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Ateneo Press",
            base_url="https://ateneopress.com",
            search_path="search?q={query}",
            territory="Philippines",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PHP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AteneoPressSpider(limit_pages=1, limit_items=5)
    spider.run()
