from nodriver_search_spider import NodriverSearchSpider

class MabookoMaSpider(NodriverSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Mabooko",
            base_url="https://mabooko.com",
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
    spider = MabookoMaSpider(limit_pages=1, limit_items=5)
    spider.run()
