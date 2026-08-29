from html_search_spider import HTMLSearchSpider

class VirginMegastoreKsaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Virgin Megastore KSA",
            base_url="https://www.virginmegastore.sa",
            search_path="search?q={query}",
            territory="Saudi Arabia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SAR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = VirginMegastoreKsaSpider(limit_pages=1, limit_items=5)
    spider.run()
