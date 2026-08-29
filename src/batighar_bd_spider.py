from html_search_spider import HTMLSearchSpider

class BatigharSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Batighar",
            base_url="https://batighar.com",
            search_path="search?q={query}",
            territory="Bangladesh",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BDT",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BatigharSpider(limit_pages=1, limit_items=5)
    spider.run()
