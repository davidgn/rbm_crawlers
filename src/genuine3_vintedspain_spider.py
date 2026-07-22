import re
from html_search_spider import HTMLSearchSpider

class VintedSpainSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="VintedSpain", base_url="https://www.vinted.es",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Spain", limit_pages=limit_pages
        )

if __name__ == "__main__":
    VintedSpainSpider(limit_pages=1).run()
