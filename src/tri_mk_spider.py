from html_search_spider import HTMLSearchSpider

class TriMkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Tri MK",
            base_url="https://shop.tri.mk",
            search_path="search?q={query}",
            territory="North Macedonia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MKD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TriMkSpider(limit_pages=1, limit_items=5)
    spider.run()
