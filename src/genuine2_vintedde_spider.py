import re
from html_search_spider import HTMLSearchSpider

class VintedDESpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="VintedDE", base_url="https://vinted.de",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Germany", limit_pages=limit_pages
        )

if __name__ == "__main__":
    VintedDESpider(limit_pages=1).run()
