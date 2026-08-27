from html_search_spider import HTMLSearchSpider

class DkAgenciesSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="DK Agencies",
            base_url="https://dkagencies.com",
            search_path="search?q={query}",
            territory="India",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="INR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = DkAgenciesSpider(limit_pages=1, limit_items=5)
    spider.run()
