import re
from html_search_spider import HTMLSearchSpider

class FijiMarketFjSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="FijiMarket_FJ", base_url="https://fijimarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Fiji", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FijiMarketFjSpider(limit_pages=1).run()
