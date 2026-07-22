import re
from html_search_spider import HTMLSearchSpider

class IziUkraineSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Izi", base_url="https://izi.ua",
            search_path="search?search_text={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Ukraine", limit_pages=limit_pages
        )
