from html_search_spider import HTMLSearchSpider

class JimotyJapanSpider(HTMLSearchSpider):
    """Spider for Jimoty (Japan)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Jimoty",
            base_url="https://jmty.jp",
            search_path="all/search?keyword={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = JimotyJapanSpider()
    spider.run()
