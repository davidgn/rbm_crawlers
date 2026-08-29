from html_search_spider import HTMLSearchSpider

class Read2LiveBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Read2Live Books",
            base_url="https://read2livebooks.com",
            search_path="search?q={query}",
            territory="Ghana",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="GHS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = Read2LiveBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
