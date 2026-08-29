from html_search_spider import HTMLSearchSpider

class SvjetlostkomercSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Svjetlostkomerc",
            base_url="https://svjetlostkomerc.ba",
            search_path="search?q={query}",
            territory="Bosnia and Herzegovina",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BAM",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SvjetlostkomercSpider(limit_pages=1, limit_items=5)
    spider.run()
