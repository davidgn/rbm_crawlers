from html_search_spider import HTMLSearchSpider

class DenmutBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Denmut Bookstore",
            base_url="https://denmutbookstore.co.zw",
            search_path="search?q={query}",
            territory="Zimbabwe",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ZWL",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = DenmutBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()
