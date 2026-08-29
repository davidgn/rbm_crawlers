from html_search_spider import HTMLSearchSpider

class ArtiniKsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Artini KS",
            base_url="https://artini-ks.com",
            search_path="search?q={query}",
            territory="Kosovo",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ArtiniKsSpider(limit_pages=1, limit_items=5)
    spider.run()
