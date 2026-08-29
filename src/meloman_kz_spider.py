from html_search_spider import HTMLSearchSpider

class MelomanKzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Meloman KZ",
            base_url="https://www.meloman.kz",
            search_path="search?q={query}",
            territory="Kazakhstan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KZT",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MelomanKzSpider(limit_pages=1, limit_items=5)
    spider.run()
