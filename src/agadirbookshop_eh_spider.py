from html_search_spider import HTMLSearchSpider

class AgadirbookshopEhSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Agadirbookshop",
            base_url="https://agadirbookshop.com",
            search_path="?s={query}",
            territory="Western Sahara / Sahrawi market surface",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MAD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AgadirbookshopEhSpider(limit_pages=1, limit_items=5)
    spider.run()
