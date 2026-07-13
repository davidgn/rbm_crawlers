from html_search_spider import HTMLSearchSpider

class AlresalahBookshopLySpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Alresalah Bookshop",
            base_url="https://alresalahbookshop.ly",
            search_path="?s={query}",
            territory="Libya",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="LYD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AlresalahBookshopLySpider(limit_pages=1, limit_items=5)
    spider.run()
