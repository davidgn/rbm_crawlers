from html_search_spider import HTMLSearchSpider

class YahooFurimaJapanSpider(HTMLSearchSpider):
    """Spider for Yahoo! Furima (Japan)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Yahoo! Furima",
            base_url="https://paypayfleamarket.yahoo.co.jp",
            search_path="search/{query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = YahooFurimaJapanSpider()
    spider.run()
