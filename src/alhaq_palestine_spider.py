from html_search_spider import HTMLSearchSpider

class AlhaqPalestineSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="AlHaq",
            base_url="https://www.alhaq.org/",
            search_path="?q={query}",
            territory="Palestine",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ILS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AlhaqPalestineSpider(limit_pages=1, limit_items=5)
    spider.run()
