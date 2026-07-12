from html_search_spider import HTMLSearchSpider

class NeiNectecThSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="NEI (National Electronics and Computer Technology Center)",
            base_url="https://www.nectec.or.th/",
            search_path="?q={query}",
            territory="Thailand",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="THB",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = NeiNectecThSpider(limit_pages=1, limit_items=5)
    spider.run()
