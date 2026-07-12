from html_search_spider import HTMLSearchSpider

class BracResearchEvaluationDivisionRedSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="BRACResearchandEvaluationDivisionRED",
            base_url="https://www.brac.net/research",
            search_path="?q={query}",
            territory="Bangladesh",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BDT",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BracResearchEvaluationDivisionRedSpider(limit_pages=1, limit_items=5)
    spider.run()
