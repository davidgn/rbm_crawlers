import re
from html_search_spider import HTMLSearchSpider

class CoinAfriqueBurkinaFasoFinalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CoinAfriqueBurkinaFasoFinal", base_url="https://bf.coinafrique.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Burkina Faso", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CoinAfriqueBurkinaFasoFinalSpider(limit_pages=1).run()
