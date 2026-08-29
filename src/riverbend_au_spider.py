from html_search_spider import HTMLSearchSpider

class RiverbendBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Riverbend Books",
            base_url="https://riverbendbooks.com.au",
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
    spider = RiverbendBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
