from html_search_spider import HTMLSearchSpider

class EverisamtingVuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Everisamting",
            base_url="https://www.everisamting.com",
            search_path="search?q={query}",
            territory="Vanuatu",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="VUV",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EverisamtingVuSpider(limit_pages=1, limit_items=5)
    spider.run()
