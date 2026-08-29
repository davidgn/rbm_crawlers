from html_search_spider import HTMLSearchSpider

class MahiriBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Mahiri Books",
            base_url="https://mahiribooks.com",
            search_path="search?q={query}",
            territory="Uganda",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="UGX",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MahiriBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
