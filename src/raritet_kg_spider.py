from html_search_spider import HTMLSearchSpider

class RaritetKgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Raritet",
            base_url="https://raritet.kg",
            search_path="?s={query}",
            territory="Kyrgyzstan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KGS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = RaritetKgSpider(limit_pages=1, limit_items=5)
    spider.run()
