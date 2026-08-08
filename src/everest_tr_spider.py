from html_search_spider import HTMLSearchSpider

class EverestTrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Everest Yayınları",
            base_url="https://www.everestyayinlari.com",
            search_path="arama?q={query}",
            territory="Turkey",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="TRY",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EverestTrSpider(limit_pages=1, limit_items=5)
    spider.run()
