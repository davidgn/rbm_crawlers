from html_search_spider import HTMLSearchSpider

class ReadersBookshopJoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Readers Bookshop JO",
            base_url="https://www.readers.jo",
            search_path="search?q={query}",
            territory="Jordan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JOD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ReadersBookshopJoSpider(limit_pages=1, limit_items=5)
    spider.run()
