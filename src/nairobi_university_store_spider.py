from html_search_spider import HTMLSearchSpider

class NairobiUniversityStoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="University of Nairobi Store",
            base_url="https://www.uonbi.ac.ke",
            search_path="store?q={query}",
            territory="Kenya",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KES",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = NairobiUniversityStoreSpider(limit_pages=1, limit_items=5)
    spider.run()
