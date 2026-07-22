import re
from html_search_spider import HTMLSearchSpider

class VestnikTMSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="VestnikTM", base_url="https://vestniktm.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Turkmenistan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    VestnikTMSpider(limit_pages=1).run()
