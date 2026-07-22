import re
from html_search_spider import HTMLSearchSpider

class CoinAfriqueMaliSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CoinAfrique Mali", base_url="https://ml.coinafrique.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mali", limit_pages=limit_pages
        )
