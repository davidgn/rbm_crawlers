from html_search_spider import HTMLSearchSpider

class CherryBlossomBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Cherry Blossom Books",
            base_url="https://cherryblossombooks.com",
            search_path="search?q={query}",
            territory="Egypt",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EGP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = CherryBlossomBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
