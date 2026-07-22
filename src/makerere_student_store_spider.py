from html_search_spider import HTMLSearchSpider

class MakerereStudentStoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Makerere Student Store",
            base_url="https://mak.ac.ug",
            search_path="store/search?q={query}",
            territory="Uganda",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="UGX",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MakerereStudentStoreSpider(limit_pages=1, limit_items=5)
    spider.run()
