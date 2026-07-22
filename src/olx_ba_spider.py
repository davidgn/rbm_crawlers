from html_search_spider import HTMLSearchSpider

class OlxBaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="OLX.ba",
            base_url="https://olx.ba",
            search_path="pretraga?category_id=45&q={query}",
            territory="Bosnia and Herzegovina",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BAM",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = OlxBaSpider(limit_pages=1, limit_items=5)
    spider.run()
