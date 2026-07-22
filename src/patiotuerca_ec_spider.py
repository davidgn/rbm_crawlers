import re
from html_search_spider import HTMLSearchSpider

class PatiotuercaEcSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Patiotuerca_EC", base_url="https://www.patiotuerca.com",
            search_path="ecuador/search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Ecuador", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PatiotuercaEcSpider(limit_pages=1).run()
