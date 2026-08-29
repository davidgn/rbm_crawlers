from html_search_spider import HTMLSearchSpider

class NoyanTapanSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Noyan Tapan",
            base_url="https://noyantapan.am",
            search_path="search?q={query}",
            territory="Armenia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AMD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = NoyanTapanSpider(limit_pages=1, limit_items=5)
    spider.run()
