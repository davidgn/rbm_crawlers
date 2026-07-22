from html_search_spider import HTMLSearchSpider

class MsuStudentBoardSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Lomonosov MSU Student Board",
            base_url="https://www.msu.ru",
            search_path="board/search?q={query}",
            territory="Russia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="RUB",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MsuStudentBoardSpider(limit_pages=1, limit_items=5)
    spider.run()
