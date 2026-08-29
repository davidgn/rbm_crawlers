from html_search_spider import HTMLSearchSpider

class NejlevnejsiKnihyCzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Nejlevnejsi Knihy CZ",
            base_url="https://www.nejlevnejsi-knihy.cz",
            search_path="search?q={query}",
            territory="Czechia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CZK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = NejlevnejsiKnihyCzSpider(limit_pages=1, limit_items=5)
    spider.run()
