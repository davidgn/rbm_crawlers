from html_search_spider import HTMLSearchSpider

class LibreriasSbsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librerias SBS",
            base_url="https://www.sbs.com.pe",
            search_path="search?q={query}",
            territory="Peru",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PEN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibreriasSbsSpider(limit_pages=1, limit_items=5)
    spider.run()
