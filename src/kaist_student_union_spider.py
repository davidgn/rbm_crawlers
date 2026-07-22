from html_search_spider import HTMLSearchSpider

class KaistStudentUnionSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="KAIST Student Union Market",
            base_url="https://student.kaist.ac.kr",
            search_path="market?q={query}",
            territory="South Korea",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KRW",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KaistStudentUnionSpider(limit_pages=1, limit_items=5)
    spider.run()
