from html_search_spider import HTMLSearchSpider

class BandaOrientalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Banda Oriental",
            base_url="https://www.bandaoriental.com.uy",
            search_path="search?q={query}",
            territory="Uruguay",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="UYU",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BandaOrientalSpider(limit_pages=1, limit_items=5)
    spider.run()
