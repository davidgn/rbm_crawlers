from html_search_spider import HTMLSearchSpider

class ZigZagClSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Zig Zag CL",
            base_url="https://www.zigzag.cl",
            search_path="search?q={query}",
            territory="Chile",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CLP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ZigZagClSpider(limit_pages=1, limit_items=5)
    spider.run()
