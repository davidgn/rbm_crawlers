from html_search_spider import HTMLSearchSpider

class UniversityLiberiaPressSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="University of Liberia Press",
            base_url="https://ul.edu.lr/publications/",
            search_path="?q={query}",
            territory="Liberia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="LRD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UniversityLiberiaPressSpider(limit_pages=1, limit_items=5)
    spider.run()
