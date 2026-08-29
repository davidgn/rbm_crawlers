from html_search_spider import HTMLSearchSpider

class DasaBookCafeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Dasa Book Cafe",
            base_url="https://www.dasabookcafe.com",
            search_path="search?q={query}",
            territory="Thailand",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="THB",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = DasaBookCafeSpider(limit_pages=1, limit_items=5)
    spider.run()
