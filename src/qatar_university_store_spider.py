from html_search_spider import HTMLSearchSpider

class QatarUniversityStoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Qatar University Store",
            base_url="https://www.qu.edu.qa",
            search_path="store/search?q={query}",
            territory="Qatar",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="QAR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = QatarUniversityStoreSpider(limit_pages=1, limit_items=5)
    spider.run()
