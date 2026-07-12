from html_search_spider import HTMLSearchSpider

class BookNexusLkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="BookNexus",
            base_url="https://booknexus.lk",
            search_path="?s={query}",
            territory="Sri Lanka",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="LKR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BookNexusLkSpider(limit_pages=1, limit_items=5)
    spider.run()
