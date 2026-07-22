from html_search_spider import HTMLSearchSpider

class UnamMarketplaceSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="UNAM Marketplace (Mexico)",
            base_url="https://www.unam.mx",
            search_path="marketplace?q={query}",
            territory="Mexico",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MXN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UnamMarketplaceSpider(limit_pages=1, limit_items=5)
    spider.run()
