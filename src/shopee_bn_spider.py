from html_search_spider import HTMLSearchSpider

class ShopeeBnSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Shopee Brunei",
            base_url="https://shopee.com",
            search_path="search?keyword={query}",
            territory="Brunei",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BND",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ShopeeBnSpider(limit_pages=1, limit_items=5)
    spider.run()
