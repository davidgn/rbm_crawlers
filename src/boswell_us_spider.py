from html_search_spider import HTMLSearchSpider

class BoswellBookCompanySpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Boswell Book Company",
            base_url="https://www.boswellbooks.com",
            search_path="search?q={query}",
            territory="USA",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BoswellBookCompanySpider(limit_pages=1, limit_items=5)
    spider.run()
