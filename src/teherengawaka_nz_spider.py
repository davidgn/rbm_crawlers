from html_search_spider import HTMLSearchSpider

class TeHerengaWakaUpSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Te Herenga Waka UP",
            base_url="https://teherengawakapress.co.nz",
            search_path="search?q={query}",
            territory="New Zealand",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NZD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TeHerengaWakaUpSpider(limit_pages=1, limit_items=5)
    spider.run()
