import re
from html_search_spider import HTMLSearchSpider

class CoinAfriqueGNSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CoinAfriqueGN", base_url="https://gn.coinafrique.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Guinea", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CoinAfriqueGNSpider(limit_pages=1).run()
