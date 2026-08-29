from html_search_spider import HTMLSearchSpider

class LibreriaVilaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libreria Vila",
            base_url="https://www.libreriavila.com.uy",
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
    spider = LibreriaVilaSpider(limit_pages=1, limit_items=5)
    spider.run()
