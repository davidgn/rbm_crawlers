from html_search_spider import HTMLSearchSpider

class VaticanLibraryStaffExchangeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Vatican Library Staff Exchange",
            base_url="https://www.vaticanlibrary.va",
            search_path="staff-exchange?q={query}",
            territory="Vatican City",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = VaticanLibraryStaffExchangeSpider(limit_pages=1, limit_items=5)
    spider.run()
