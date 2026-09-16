from html_search_spider import HTMLSearchSpider

class SecondStreetJapanSpider(HTMLSearchSpider):
    """Spider for 2nd Street (Japan)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="2nd Street",
            base_url="https://www.2ndstreet.jp",
            search_path="search?keyword={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = SecondStreetJapanSpider()
    spider.run()
