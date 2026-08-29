from html_search_spider import HTMLSearchSpider

class PaulinasColombiaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Paulinas Colombia",
            base_url="https://www.libreriapaulinas.com",
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
    spider = PaulinasColombiaSpider(limit_pages=1, limit_items=5)
    spider.run()
