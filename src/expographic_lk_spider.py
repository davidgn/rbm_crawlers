from html_search_spider import HTMLSearchSpider

class ExpographicBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Expographic Books",
            base_url="https://www.expo.lk",
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
    spider = ExpographicBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
