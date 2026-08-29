from html_search_spider import HTMLSearchSpider

class ThatBookstoreInBlythevilleSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="That Bookstore in Blytheville",
            base_url="https://thatbookstoreinblytheville.com",
            search_path="search?q={query}",
            territory="USA",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ThatBookstoreInBlythevilleSpider(limit_pages=1, limit_items=5)
    spider.run()
