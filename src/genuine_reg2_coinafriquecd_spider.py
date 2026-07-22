import re
from html_search_spider import HTMLSearchSpider

class CoinAfriqueCDSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CoinAfriqueCD", base_url="https://cd.coinafrique.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="DR Congo", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CoinAfriqueCDSpider(limit_pages=1).run()
