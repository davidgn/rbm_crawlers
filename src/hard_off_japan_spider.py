from html_search_spider import HTMLSearchSpider

class HardOffJapanSpider(HTMLSearchSpider):
    """Spider for Hard Off (Japan)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Hard Off",
            base_url="https://netmall.hardoff.co.jp",
            search_path="search/?q={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = HardOffJapanSpider()
    spider.run()
