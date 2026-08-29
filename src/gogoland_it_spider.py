from html_search_spider import HTMLSearchSpider

class GogolAndCompanySpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="GOGOL and Company",
            base_url="https://gogolandcompany.com",
            search_path="search?q={query}",
            territory="Italy",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = GogolAndCompanySpider(limit_pages=1, limit_items=5)
    spider.run()
