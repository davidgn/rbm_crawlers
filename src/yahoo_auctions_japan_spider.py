from html_search_spider import HTMLSearchSpider

class YahooAuctionsJapanSpider(HTMLSearchSpider):
    """Spider for Yahoo! Auctions (Japan)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Yahoo! Auctions",
            base_url="https://auctions.yahoo.co.jp",
            search_path="search/search?p={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = YahooAuctionsJapanSpider()
    spider.run()
