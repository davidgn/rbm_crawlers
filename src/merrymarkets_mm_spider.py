import re
from html_search_spider import HTMLSearchSpider

class MerryMarketsMmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MerryMarkets_MM", base_url="https://myanmar.merrymarkets.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.listing', 'title': 'h3', 'price': '.price'},
            territory="Myanmar", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MerryMarketsMmSpider(limit_pages=1).run()
