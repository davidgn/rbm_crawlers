from html_search_spider import HTMLSearchSpider

class CafradAfricanTrainingResearchAdministrationSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="AfricanTrainingandResearchCentreinAdministrationCAFRAD",
            base_url="http://www.cafrad.org/publications/",
            search_path="?q={query}",
            territory="Morocco",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MAD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = CafradAfricanTrainingResearchAdministrationSpider(limit_pages=1, limit_items=5)
    spider.run()
