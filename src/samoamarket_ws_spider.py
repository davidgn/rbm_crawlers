import re
from html_search_spider import HTMLSearchSpider

class SamoaMarketWsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SamoaMarket_WS", base_url="https://samoamarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Samoa", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SamoaMarketWsSpider(limit_pages=1).run()
