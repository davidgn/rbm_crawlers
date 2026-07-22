from html_search_spider import HTMLSearchSpider

class SeoulNationalUniversityStoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Seoul National University Co-op",
            base_url="https://snuco.snu.ac.kr",
            search_path="search?q={query}",
            territory="South Korea",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KRW",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SeoulNationalUniversityStoreSpider(limit_pages=1, limit_items=5)
    spider.run()
