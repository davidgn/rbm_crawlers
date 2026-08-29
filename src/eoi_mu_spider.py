from html_search_spider import HTMLSearchSpider

class EditionsDeLOceanIndienSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Editions de l Ocean Indien",
            base_url="https://www.eoi-info.com",
            search_path="search?q={query}",
            territory="Mauritius",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EditionsDeLOceanIndienSpider(limit_pages=1, limit_items=5)
    spider.run()
