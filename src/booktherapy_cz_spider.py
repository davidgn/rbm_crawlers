from html_search_spider import HTMLSearchSpider

class BookTherapySpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Book Therapy",
            base_url="https://booktherapy.cz",
            search_path="search?q={query}",
            territory="Czech Republic",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CZK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BookTherapySpider(limit_pages=1, limit_items=5)
    spider.run()
