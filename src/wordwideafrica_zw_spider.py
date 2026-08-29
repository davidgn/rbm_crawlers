from html_search_spider import HTMLSearchSpider

class WordwideAfricaBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Wordwide Africa Bookstore",
            base_url="https://wordwideafrica.com",
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
    spider = WordwideAfricaBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()
