from html_search_spider import HTMLSearchSpider

class VintedUsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Vinted US",
            base_url="https://www.vinted.com",
            search_path="catalog?search_text={query}",
            territory="United States",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = VintedUsSpider(limit_pages=1, limit_items=5)
    spider.run()
