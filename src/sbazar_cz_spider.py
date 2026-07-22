import re
from html_search_spider import HTMLSearchSpider

class SbazarCzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Sbazar_CZ", base_url="https://www.sbazar.cz",
            search_path="hledej/{search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Czech Republic", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SbazarCzSpider(limit_pages=1).run()
