from html_search_spider import HTMLSearchSpider

class OxfordInSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Oxford Bookstore",
            base_url="https://www.oxfordbookstore.com",
            search_path="search?q={query}",
            territory="India",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="INR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = OxfordInSpider(limit_pages=1, limit_items=5)
    spider.run()
