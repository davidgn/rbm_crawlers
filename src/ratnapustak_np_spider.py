from html_search_spider import HTMLSearchSpider

class RatnaPustakBhandarSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Ratna Pustak Bhandar",
            base_url="https://ratnapustak.com",
            search_path="search?q={query}",
            territory="Nepal",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NPR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = RatnaPustakBhandarSpider(limit_pages=1, limit_items=5)
    spider.run()
