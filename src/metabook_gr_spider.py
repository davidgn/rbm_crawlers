from html_search_spider import HTMLSearchSpider

class MetabookGrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Metabook",
            base_url="https://metabook.gr",
            search_path="search/?q={query}",
            territory="Greece",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MetabookGrSpider(limit_pages=1, limit_items=5)
    spider.run()
