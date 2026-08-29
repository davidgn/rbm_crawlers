from html_search_spider import HTMLSearchSpider

class SilverfishBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Silverfish Books",
            base_url="https://silverfishbooks.com",
            search_path="search?q={query}",
            territory="Malaysia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MYR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SilverfishBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
