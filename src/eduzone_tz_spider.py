from html_search_spider import HTMLSearchSpider

class EduzoneInternationalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Eduzone International",
            base_url="https://eduzone.tz",
            search_path="search?q={query}",
            territory="Tanzania",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="TZS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EduzoneInternationalSpider(limit_pages=1, limit_items=5)
    spider.run()
