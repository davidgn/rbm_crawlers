from html_search_spider import HTMLSearchSpider

class AubStudentMarketplaceSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="AUB Student Marketplace (Beirut)",
            base_url="https://www.aub.edu.lb",
            search_path="marketplace/search?q={query}",
            territory="Lebanon",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="LBP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AubStudentMarketplaceSpider(limit_pages=1, limit_items=5)
    spider.run()
