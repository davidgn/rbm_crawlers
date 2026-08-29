from html_search_spider import HTMLSearchSpider

class JdBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="JD Books",
            base_url="https://book.jd.com",
            search_path="search?q={query}",
            territory="China",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CNY",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = JdBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
