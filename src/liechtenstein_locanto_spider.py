import re
from html_search_spider import HTMLSearchSpider

class LiechtensteinLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_LI", base_url="https://liechtenstein.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Liechtenstein", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LiechtensteinLocantoSpider(limit_pages=1).run()
