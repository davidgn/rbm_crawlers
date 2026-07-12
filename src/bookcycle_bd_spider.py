from html_search_spider import HTMLSearchSpider

class BookCycleSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="BookCycle",
            base_url="https://bookcycle.netlify.app",
            search_path="?q={query}",
            territory="Bangladesh",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BDT",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BookCycleSpider(limit_pages=1, limit_items=5)
    spider.run()
