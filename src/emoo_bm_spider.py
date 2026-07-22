from html_search_spider import HTMLSearchSpider

class EmooBmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="eMoo",
            base_url="https://www.emoo.bm",
            search_path="search-results/?keywords={query}",
            territory="Bermuda",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BMD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EmooBmSpider(limit_pages=1, limit_items=5)
    spider.run()
