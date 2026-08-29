from html_search_spider import HTMLSearchSpider

class KonstIgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Konst-ig",
            base_url="https://konstig.se",
            search_path="search?q={query}",
            territory="Sweden",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SEK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KonstIgSpider(limit_pages=1, limit_items=5)
    spider.run()
