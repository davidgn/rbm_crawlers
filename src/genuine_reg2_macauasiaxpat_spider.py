import re
from html_search_spider import HTMLSearchSpider

class MacauAsiaXpatSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MacauAsiaXpat", base_url="https://macau.asiaxpat.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Macau", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MacauAsiaXpatSpider(limit_pages=1).run()
