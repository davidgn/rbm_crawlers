import re
from html_search_spider import HTMLSearchSpider

class GrenadaMarketGdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="GrenadaMarket_GD", base_url="https://grenadamarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Grenada", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GrenadaMarketGdSpider(limit_pages=1).run()
