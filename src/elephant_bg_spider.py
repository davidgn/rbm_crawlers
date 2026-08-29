from html_search_spider import HTMLSearchSpider

class ElephantBookstoreBgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Elephant Bookstore BG",
            base_url="https://elephantbookstore.com",
            search_path="search?q={query}",
            territory="Bulgaria",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BGN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ElephantBookstoreBgSpider(limit_pages=1, limit_items=5)
    spider.run()
