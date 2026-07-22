from html_search_spider import HTMLSearchSpider

class ChulalongkornStudentStoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Chulalongkorn Student Store",
            base_url="https://www.chula.ac.th",
            search_path="marketplace?q={query}",
            territory="Thailand",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="THB",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ChulalongkornStudentStoreSpider(limit_pages=1, limit_items=5)
    spider.run()
