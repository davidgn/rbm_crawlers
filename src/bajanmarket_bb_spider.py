import re
from html_search_spider import HTMLSearchSpider

class BajanMarketBbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BajanMarket_BB", base_url="https://bajanmarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Barbados", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BajanMarketBbSpider(limit_pages=1).run()
