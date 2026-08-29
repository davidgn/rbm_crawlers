from html_search_spider import HTMLSearchSpider

class LibrairieDrawnAndQuarterlySpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librairie Drawn and Quarterly",
            base_url="https://montreal.drawnandquarterly.com",
            search_path="search?q={query}",
            territory="Canada",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CAD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibrairieDrawnAndQuarterlySpider(limit_pages=1, limit_items=5)
    spider.run()
