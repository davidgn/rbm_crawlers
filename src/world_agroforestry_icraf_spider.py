from html_search_spider import HTMLSearchSpider

class WorldAgroforestryIcrafSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="WorldAgroforestryICRAF",
            base_url="https://www.worldagroforestry.org/publications",
            search_path="?q={query}",
            territory="Kenya",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KES",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = WorldAgroforestryIcrafSpider(limit_pages=1, limit_items=5)
    spider.run()
