from html_search_spider import HTMLSearchSpider


class ReadsUzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Reads.uz",
            base_url="https://reads.uz",
            search_path="search?q={query}",
            territory="Uzbekistan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="UZS",
            **kwargs,
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ReadsUzSpider(limit_pages=1, limit_items=5)
    spider.run()
