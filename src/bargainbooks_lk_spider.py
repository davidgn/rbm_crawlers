from html_search_spider import HTMLSearchSpider

class BargainBooksLkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bargain Books LK",
            base_url="https://bargainbooks.lk",
            search_path="search?q={query}",
            territory="Sri Lanka",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="LKR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BargainBooksLkSpider(limit_pages=1, limit_items=5)
    spider.run()
