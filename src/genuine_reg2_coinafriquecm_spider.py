import re
from html_search_spider import HTMLSearchSpider

class CoinAfriqueCMSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CoinAfriqueCM", base_url="https://cm.coinafrique.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Cameroon", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CoinAfriqueCMSpider(limit_pages=1).run()
