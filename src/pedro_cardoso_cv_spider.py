from html_search_spider import HTMLSearchSpider

class PedroCardosoCvSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Livraria Pedro Cardoso",
            base_url="https://catalogolpc.blogspot.com",
            search_path="search?q={query}",
            territory="Cape Verde",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CVE",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = PedroCardosoCvSpider(limit_pages=1, limit_items=5)
    spider.run()
