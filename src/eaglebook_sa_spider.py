from html_search_spider import HTMLSearchSpider

class EagleBookSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Eagle Book",
            base_url="https://eaglebooksa.com",
            search_path="search?q={query}",
            territory="Saudi Arabia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SAR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EagleBookSpider(limit_pages=1, limit_items=5)
    spider.run()
