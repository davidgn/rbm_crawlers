import re
from html_search_spider import HTMLSearchSpider

class AvitoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Avito", base_url="https://www.avito.ma",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Morocco", limit_pages=limit_pages
        )
