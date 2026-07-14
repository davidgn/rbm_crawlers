from html_search_spider import HTMLSearchSpider

class MzadqatarQaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Mzad Qatar",
            base_url="https://mzadqatar.com",
            search_path="en/others/sale/books-&amp;-stationery?search={query}",
            territory="Qatar",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="QAR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MzadqatarQaSpider(limit_pages=1, limit_items=5)
    spider.run()
