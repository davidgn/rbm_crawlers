from html_search_spider import HTMLSearchSpider

class WobGlobalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="World of Books",
            base_url="https://www.wob.com",
            search_path="category/all?search={query}",
            territory="Global",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="GBP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = WobGlobalSpider(limit_pages=1, limit_items=5)
    spider.run()
