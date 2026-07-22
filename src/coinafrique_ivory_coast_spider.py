import re
from html_search_spider import HTMLSearchSpider

class CoinAfriqueIvoryCoastSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CoinAfrique Ivory Coast", base_url="https://ci.coinafrique.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Ivory Coast", limit_pages=limit_pages
        )
