import re
from html_search_spider import HTMLSearchSpider

class GumtreeUKSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="GumtreeUK", base_url="https://gumtree.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="United Kingdom", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GumtreeUKSpider(limit_pages=1).run()
