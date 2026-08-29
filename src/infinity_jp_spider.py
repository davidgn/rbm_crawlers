from html_search_spider import HTMLSearchSpider

class InfinityBooksJapanSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Infinity Books Japan",
            base_url="https://www.infinitybooksjapan.com",
            search_path="search?q={query}",
            territory="Japan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JPY",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = InfinityBooksJapanSpider(limit_pages=1, limit_items=5)
    spider.run()
