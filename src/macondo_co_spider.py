from html_search_spider import HTMLSearchSpider

class LibreriaMacondoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libreria Macondo",
            base_url="https://libreriamacondo.com",
            search_path="search?q={query}",
            territory="Colombia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="COP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibreriaMacondoSpider(limit_pages=1, limit_items=5)
    spider.run()
