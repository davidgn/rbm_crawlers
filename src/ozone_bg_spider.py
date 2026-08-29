from html_search_spider import HTMLSearchSpider

class OzoneBgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Ozone BG",
            base_url="https://www.ozone.bg",
            search_path="search?q={query}",
            territory="Bulgaria",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BGN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = OzoneBgSpider(limit_pages=1, limit_items=5)
    spider.run()
