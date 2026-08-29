from html_search_spider import HTMLSearchSpider

class BooknookStoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Booknook Store",
            base_url="https://booknook.store",
            search_path="search?q={query}",
            territory="Ghana",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="GHS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BooknookStoreSpider(limit_pages=1, limit_items=5)
    spider.run()
