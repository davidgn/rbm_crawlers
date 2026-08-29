from html_search_spider import HTMLSearchSpider

class SaeedAndSamirSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Saeed and Samir",
            base_url="https://saeedandsamir.com",
            search_path="search?q={query}",
            territory="Kuwait",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KWD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SaeedAndSamirSpider(limit_pages=1, limit_items=5)
    spider.run()
