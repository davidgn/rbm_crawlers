from html_search_spider import HTMLSearchSpider

class AkaguriroBiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Akaguriro",
            base_url="https://akaguriro.com",
            search_path="category/books-magazines?q={query}",
            territory="Burundi",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BIF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AkaguriroBiSpider(limit_pages=1, limit_items=5)
    spider.run()
