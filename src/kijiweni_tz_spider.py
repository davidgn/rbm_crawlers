import re
from html_search_spider import HTMLSearchSpider

class KijiweniTzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Kijiweni_TZ", base_url="https://kijiweni.co.tz",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Tanzania", limit_pages=limit_pages
        )

if __name__ == "__main__":
    KijiweniTzSpider(limit_pages=1).run()
