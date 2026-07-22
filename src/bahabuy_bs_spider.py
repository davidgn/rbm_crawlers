from html_search_spider import HTMLSearchSpider

class BahaBuyBsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="BahaBuy",
            base_url="https://www.bahabuy.com",
            search_path="search?q={query}",
            territory="Bahamas",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BSD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BahaBuyBsSpider(limit_pages=1, limit_items=5)
    spider.run()
