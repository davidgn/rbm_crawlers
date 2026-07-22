import re
from html_search_spider import HTMLSearchSpider

class MrkakaMozambiqueSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MrkakaMozambique", base_url="https://mrkaka.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mozambique", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MrkakaMozambiqueSpider(limit_pages=1).run()
