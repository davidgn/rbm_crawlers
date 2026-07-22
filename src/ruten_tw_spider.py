import re
from html_search_spider import HTMLSearchSpider

class RutenTwSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Ruten_TW", base_url="https://www.ruten.com.tw",
            search_path="find/?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Taiwan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    RutenTwSpider(limit_pages=1).run()
