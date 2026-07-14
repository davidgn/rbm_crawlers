from html_search_spider import HTMLSearchSpider

class IranibookIrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="IraniBook",
            base_url="https://iranibook.com",
            search_path="?s={query}",
            territory="Iran",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="IRR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = IranibookIrSpider(limit_pages=1, limit_items=5)
    spider.run()
