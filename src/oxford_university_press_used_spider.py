from html_search_spider import HTMLSearchSpider

class OxfordUniversityPressUsedSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Oxford University Press Used",
            base_url="https://global.oup.com",
            search_path="academic/search?q={query}",
            territory="United Kingdom",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="GBP",
            **kwargs
        )

    def run(self, search_term=None):
        self.logger.warning("Permanently blocked by AWS WAF. Skipping.")

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = OxfordUniversityPressUsedSpider(limit_pages=1, limit_items=5)
    spider.run()

