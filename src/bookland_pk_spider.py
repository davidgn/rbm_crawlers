from html_search_spider import HTMLSearchSpider

class BooklandPkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bookland PK",
            base_url="https://bookland.com.pk",
            search_path="search?q={query}",
            territory="Pakistan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PKR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BooklandPkSpider(limit_pages=1, limit_items=5)
    spider.run()
