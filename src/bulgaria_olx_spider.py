import re
from html_search_spider import HTMLSearchSpider

class BulgariaOlxSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OLX_BG", base_url="https://www.olx.bg",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Bulgaria", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BulgariaOlxSpider(limit_pages=1).run()
