from html_search_spider import HTMLSearchSpider

class WordsBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Words Bookstore",
            base_url="https://wordsbookstorecafe.com",
            search_path="search?q={query}",
            territory="Bahrain",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BHD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = WordsBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()
