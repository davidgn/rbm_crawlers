from html_search_spider import HTMLSearchSpider

class SuperknjizaraHrSpider(HTMLSearchSpider):
    """Native spider for Superknjižara (Croatia)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Superknjižara",
            base_url="https://superknjizara.hr",
            search_path="pretraga?q={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Croatia",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = SuperknjizaraHrSpider()
    spider.run()
