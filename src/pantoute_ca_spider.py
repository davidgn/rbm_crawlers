from html_search_spider import HTMLSearchSpider

class LibrairiePantouteSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librairie Pantoute",
            base_url="https://www.librairiepantoute.com",
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
    spider = LibrairiePantouteSpider(limit_pages=1, limit_items=5)
    spider.run()
