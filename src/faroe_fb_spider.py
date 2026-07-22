from html_search_spider import HTMLSearchSpider

class FaroeFbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Facebook Marketplace Faroe",
            base_url="https://www.facebook.com",
            search_path="marketplace/faroeislands/search/?query={query}",
            territory="Faroe Islands",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="DKK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = FaroeFbSpider(limit_pages=1, limit_items=5)
    spider.run()
