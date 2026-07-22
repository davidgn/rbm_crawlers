from html_search_spider import HTMLSearchSpider

class YourBuySiteCwSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Your Buy Site",
            base_url="https://yourbuysite.com",
            search_path="search?q={query}",
            territory="Curaçao",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ANG",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = YourBuySiteCwSpider(limit_pages=1, limit_items=5)
    spider.run()
