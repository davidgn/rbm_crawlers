from html_search_spider import HTMLSearchSpider

class BackHomeBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Back Home Books",
            base_url="https://www.backhomebooks.net",
            search_path="search?q={query}",
            territory="Finland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BackHomeBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
