from html_search_spider import HTMLSearchSpider

class GumtreeZaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Gumtree South Africa",
            base_url="https://www.gumtree.co.za",
            search_path="s-books-games/{query}/v1q0p1",
            territory="South Africa",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ZAR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = GumtreeZaSpider(limit_pages=1, limit_items=5)
    spider.run()
