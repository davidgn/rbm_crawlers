from html_search_spider import HTMLSearchSpider

class NxbtreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="NXB Tre",
            base_url="https://www.nxbtre.com.vn",
            search_path="tim-kiem?q={query}",
            territory="Vietnam",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="VND",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = NxbtreSpider(limit_pages=1, limit_items=5)
    spider.run()
