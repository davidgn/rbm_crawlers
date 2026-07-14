from html_search_spider import HTMLSearchSpider

class BookstockUaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bookstock",
            base_url="https://bookstock.net",
            search_path="search?q={query}",
            territory="Ukraine",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="UAH",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BookstockUaSpider(limit_pages=1, limit_items=5)
    spider.run()
