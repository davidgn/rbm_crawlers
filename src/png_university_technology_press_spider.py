from html_search_spider import HTMLSearchSpider

class PngUniversityTechnologyPressSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="PNG University of Technology Press",
            base_url="https://www.pnguot.ac.pg/pnguot-press/",
            search_path="?q={query}",
            territory="Papua New Guinea",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PGK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = PngUniversityTechnologyPressSpider(limit_pages=1, limit_items=5)
    spider.run()
