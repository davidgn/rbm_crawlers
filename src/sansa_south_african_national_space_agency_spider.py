from html_search_spider import HTMLSearchSpider

class SansaSouthAfricanNationalSpaceAgencySpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="SouthAfricanNationalSpaceAgencySANSA",
            base_url="https://www.sansa.org.za/publications/",
            search_path="?q={query}",
            territory="South Africa",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ZAR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SansaSouthAfricanNationalSpaceAgencySpider(limit_pages=1, limit_items=5)
    spider.run()
