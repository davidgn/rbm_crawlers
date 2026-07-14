from html_search_spider import HTMLSearchSpider

class AlibookscdCdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Alibooks.cd",
            base_url="https://alibookscd.com",
            search_path="?s={query}",
            territory="Democratic Republic of the Congo",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CDF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AlibookscdCdSpider(limit_pages=1, limit_items=5)
    spider.run()
