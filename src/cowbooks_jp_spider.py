from html_search_spider import HTMLSearchSpider

class CowbooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Cowbooks",
            base_url="https://cowbooks.jp",
            search_path="search?q={query}",
            territory="Japan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JPY",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = CowbooksSpider(limit_pages=1, limit_items=5)
    spider.run()
