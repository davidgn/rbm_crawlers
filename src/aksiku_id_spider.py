from html_search_spider import HTMLSearchSpider

class AksikuIdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Aksiku",
            base_url="https://www.aksiku.com",
            search_path="search?q={query}",
            territory="Indonesia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="IDR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AksikuIdSpider(limit_pages=1, limit_items=5)
    spider.run()
