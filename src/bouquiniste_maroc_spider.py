from html_search_spider import HTMLSearchSpider

class BouquinisteMarocSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bouquiniste Maroc",
            base_url="https://www.bouquinistemaroc.com",
            search_path="?s={query}",
            territory="Morocco",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MAD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BouquinisteMarocSpider(limit_pages=1, limit_items=5)
    spider.run()
