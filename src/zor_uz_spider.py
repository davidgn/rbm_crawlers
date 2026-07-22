import re
from html_search_spider import HTMLSearchSpider

class ZorUzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Zor_UZ", base_url="https://zor.uz",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Uzbekistan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ZorUzSpider(limit_pages=1).run()
