from html_search_spider import HTMLSearchSpider

class CsiroPublishingSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="CSIROPublishing",
            base_url="https://www.publish.csiro.au/",
            search_path="?q={query}",
            territory="Australia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AUD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = CsiroPublishingSpider(limit_pages=1, limit_items=5)
    spider.run()
