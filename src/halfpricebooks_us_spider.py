from html_search_spider import HTMLSearchSpider

class HalfPriceBooksUsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Half Price Books",
            base_url="https://hpb.com",
            search_path="search?q={query}",
            territory="United States",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = HalfPriceBooksUsSpider(limit_pages=1, limit_items=5)
    spider.run()
