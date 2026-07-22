from html_search_spider import HTMLSearchSpider

class IbayMvSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="iBay Maldives",
            base_url="https://ibay.com.mv",
            search_path="index.php?page=search&s={query}",
            territory="Maldives",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MVR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = IbayMvSpider(limit_pages=1, limit_items=5)
    spider.run()
