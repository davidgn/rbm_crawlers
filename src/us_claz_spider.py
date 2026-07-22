import re
from html_search_spider import HTMLSearchSpider

class UsClazSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Claz_US", base_url="https://claz.org",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="United States", limit_pages=limit_pages
        )

if __name__ == "__main__":
    UsClazSpider(limit_pages=1).run()
