from html_search_spider import HTMLSearchSpider

class DeReyghereSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="De Reyghere",
            base_url="https://www.dereyghere.be",
            search_path="search?q={query}",
            territory="Belgium",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = DeReyghereSpider(limit_pages=1, limit_items=5)
    spider.run()
