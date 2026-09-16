from nodriver_search_spider import NodriverSearchSpider

class KansallinenKirjakauppaSpider(NodriverSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Kansallinen Kirjakauppa",
            base_url="https://www.kansallinen.fi",
            search_path="search?q={query}",
            territory="Finland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KansallinenKirjakauppaSpider(limit_pages=1, limit_items=5)
    spider.run()
