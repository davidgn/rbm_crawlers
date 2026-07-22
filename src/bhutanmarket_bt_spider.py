import re
from html_search_spider import HTMLSearchSpider

class BhutanMarketBtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BhutanMarket_BT", base_url="https://bhutanmarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Bhutan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BhutanMarketBtSpider(limit_pages=1).run()
