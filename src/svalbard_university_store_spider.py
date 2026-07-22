from html_search_spider import HTMLSearchSpider

class SvalbardUniversityStoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="UNIS Svalbard Store",
            base_url="https://www.unis.no",
            search_path="store?q={query}",
            territory="Svalbard",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NOK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SvalbardUniversityStoreSpider(limit_pages=1, limit_items=5)
    spider.run()
