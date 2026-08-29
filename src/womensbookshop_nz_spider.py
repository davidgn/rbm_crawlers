from html_search_spider import HTMLSearchSpider

class TheWomensBookshopSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="The Womens Bookshop",
            base_url="https://womensbookshop.co.nz",
            search_path="search?q={query}",
            territory="New Zealand",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NZD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TheWomensBookshopSpider(limit_pages=1, limit_items=5)
    spider.run()
