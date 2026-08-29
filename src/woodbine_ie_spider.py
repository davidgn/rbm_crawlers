from html_search_spider import HTMLSearchSpider

class WoodbineBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Woodbine Books",
            base_url="https://woodbinebooks.ie",
            search_path="search?q={query}",
            territory="Ireland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = WoodbineBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
