from html_search_spider import HTMLSearchSpider

class JerseyInsightJeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Jersey Insight",
            base_url="https://www.jerseyinsight.com",
            search_path="classifieds/search?q={query}",
            territory="Jersey",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JEP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = JerseyInsightJeSpider(limit_pages=1, limit_items=5)
    spider.run()
