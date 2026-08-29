from html_search_spider import HTMLSearchSpider

class VisibleVoiceBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Visible Voice Books",
            base_url="https://www.visiblevoicebooks.com",
            search_path="search?q={query}",
            territory="USA",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = VisibleVoiceBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
