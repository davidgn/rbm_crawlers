import re
from html_search_spider import HTMLSearchSpider

class LocantoIvoryCoastSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto Ivory Coast", base_url="https://www.locanto.ci",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Ivory Coast", limit_pages=limit_pages
        )
