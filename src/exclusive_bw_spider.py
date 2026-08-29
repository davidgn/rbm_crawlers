from html_search_spider import HTMLSearchSpider

class ExclusiveBooksBwSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Exclusive Books BW",
            base_url="https://www.exclusivebooks.co.bw",
            search_path="search?q={query}",
            territory="Botswana",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BWP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ExclusiveBooksBwSpider(limit_pages=1, limit_items=5)
    spider.run()
