from html_search_spider import HTMLSearchSpider

class BookinistAmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bookinist",
            base_url="https://bookinist.am",
            search_path="?s={query}",
            territory="Armenia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AMD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BookinistAmSpider(limit_pages=1, limit_items=5)
    spider.run()
