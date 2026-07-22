import re
from html_search_spider import HTMLSearchSpider

class SolomonLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_SB", base_url="https://solomon.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Solomon Islands", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SolomonLocantoSpider(limit_pages=1).run()
