from html_search_spider import HTMLSearchSpider

class TheFirstPageSaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="The First Page SA",
            base_url="https://salla.sa/thefirstpage",
            search_path="search?q={query}",
            territory="Saudi Arabia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SAR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TheFirstPageSaSpider(limit_pages=1, limit_items=5)
    spider.run()
