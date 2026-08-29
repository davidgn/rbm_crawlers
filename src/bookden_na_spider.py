from html_search_spider import HTMLSearchSpider

class BookDenNaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Book Den NA",
            base_url="https://bookden.com.na",
            search_path="search?q={query}",
            territory="Namibia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NAD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BookDenNaSpider(limit_pages=1, limit_items=5)
    spider.run()
