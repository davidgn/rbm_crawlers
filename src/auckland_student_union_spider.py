from html_search_spider import HTMLSearchSpider

class AucklandStudentUnionSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Auckland Student Union (AUSA)",
            base_url="https://www.ausa.org.nz",
            search_path="store?q={query}",
            territory="New Zealand",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NZD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AucklandStudentUnionSpider(limit_pages=1, limit_items=5)
    spider.run()
