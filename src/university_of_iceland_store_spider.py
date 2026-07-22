from html_search_spider import HTMLSearchSpider

class UniversityOfIcelandStoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="University of Iceland Store",
            base_url="https://www.hi.is",
            search_path="store?q={query}",
            territory="Iceland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ISK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UniversityOfIcelandStoreSpider(limit_pages=1, limit_items=5)
    spider.run()
