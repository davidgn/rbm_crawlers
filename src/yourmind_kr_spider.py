from html_search_spider import HTMLSearchSpider

class YourMindSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Your Mind",
            base_url="https://your-mind.com",
            search_path="search?q={query}",
            territory="South Korea",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KRW",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = YourMindSpider(limit_pages=1, limit_items=5)
    spider.run()
