import re
from html_search_spider import HTMLSearchSpider

class ZomaOkazSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Zoma Okaz", base_url="https://www.zomaokaz.mg",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Madagascar", limit_pages=limit_pages
        )
