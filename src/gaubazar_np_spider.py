import re
from html_search_spider import HTMLSearchSpider

class GaubazarSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Gaubazar", base_url="https://www.gaubazar.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Nepal", limit_pages=limit_pages
        )
