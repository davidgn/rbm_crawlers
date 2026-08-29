from html_search_spider import HTMLSearchSpider

class FullersBookshopSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Fullers Bookshop",
            base_url="https://www.fullersbookshop.com.au",
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
    spider = FullersBookshopSpider(limit_pages=1, limit_items=5)
    spider.run()
