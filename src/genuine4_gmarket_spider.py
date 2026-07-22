import re
from html_search_spider import HTMLSearchSpider

class GmarketSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Gmarket", base_url="https://www.gmarket.co.kr",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="South Korea", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GmarketSpider(limit_pages=1).run()
