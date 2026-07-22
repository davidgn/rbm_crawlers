import re
from html_search_spider import HTMLSearchSpider

class MarocAnnoncesSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MarocAnnonces", base_url="https://www.marocannonces.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Morocco", limit_pages=limit_pages
        )
