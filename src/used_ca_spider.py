import re
from html_search_spider import HTMLSearchSpider

class UsedCaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Used_CA", base_url="https://used.ca",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Canada", limit_pages=limit_pages
        )

if __name__ == "__main__":
    UsedCaSpider(limit_pages=1).run()
