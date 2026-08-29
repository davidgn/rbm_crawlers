from html_search_spider import HTMLSearchSpider

class AlmatyKitapSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Almaty Kitap",
            base_url="https://almatykitap.kz",
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
    spider = AlmatyKitapSpider(limit_pages=1, limit_items=5)
    spider.run()
