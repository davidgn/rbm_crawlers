from html_search_spider import HTMLSearchSpider

class FalklandsFbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Facebook Marketplace Falklands",
            base_url="https://www.facebook.com",
            search_path="marketplace/108523312507851/search/?query={query}",
            territory="Falkland Islands",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="FKP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = FalklandsFbSpider(limit_pages=1, limit_items=5)
    spider.run()
