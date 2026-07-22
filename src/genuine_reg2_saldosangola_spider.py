import re
from html_search_spider import HTMLSearchSpider

class SaldosAngolaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SaldosAngola", base_url="https://saldosangola.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Angola", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SaldosAngolaSpider(limit_pages=1).run()
