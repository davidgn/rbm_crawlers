import re
from html_search_spider import HTMLSearchSpider

class TogoCoinafriqueSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CoinAfrique_TG", base_url="https://tg.coinafrique.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Togo", limit_pages=limit_pages
        )

if __name__ == "__main__":
    TogoCoinafriqueSpider(limit_pages=1).run()
