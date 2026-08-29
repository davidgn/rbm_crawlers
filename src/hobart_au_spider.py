from html_search_spider import HTMLSearchSpider

class HobartBookshopSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Hobart Bookshop",
            base_url="https://www.hobartbookshop.com.au",
            search_path="search?q={query}",
            territory="Australia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AUD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = HobartBookshopSpider(limit_pages=1, limit_items=5)
    spider.run()
