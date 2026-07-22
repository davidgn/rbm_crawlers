import re
from html_search_spider import HTMLSearchSpider

class CoinAfriqueNigerSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CoinAfrique Niger", base_url="https://ne.coinafrique.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Niger", limit_pages=limit_pages
        )
