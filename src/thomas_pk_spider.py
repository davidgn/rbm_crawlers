from html_search_spider import HTMLSearchSpider

class ThomasAndThomasSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Thomas and Thomas",
            base_url="https://thomasandthomas.com.pk",
            search_path="search?q={query}",
            territory="Pakistan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PKR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ThomasAndThomasSpider(limit_pages=1, limit_items=5)
    spider.run()
