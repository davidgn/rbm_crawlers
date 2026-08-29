from html_search_spider import HTMLSearchSpider

class LibreriaLaCentralSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libreria La Central",
            base_url="https://www.lacentral.com",
            search_path="search?q={query}",
            territory="Spain",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibreriaLaCentralSpider(limit_pages=1, limit_items=5)
    spider.run()
