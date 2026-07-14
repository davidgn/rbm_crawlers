from html_search_spider import HTMLSearchSpider

class SahanbooksSoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Sahanbooks",
            base_url="https://sahanbooks.com",
            search_path="?s={query}",
            territory="Somalia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SOS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SahanbooksSoSpider(limit_pages=1, limit_items=5)
    spider.run()
