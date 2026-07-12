from html_search_spider import HTMLSearchSpider

class AcademyScientificResearchTechnologyAsrtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="AcademyofScientificResearchandTechnologyASRT",
            base_url="http://www.asrt.sci.eg/",
            search_path="?q={query}",
            territory="Egypt",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EGP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AcademyScientificResearchTechnologyAsrtSpider(limit_pages=1, limit_items=5)
    spider.run()
