import re
from html_search_spider import HTMLSearchSpider

class AfribabaMaliSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba Mali", base_url="https://ml.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mali", limit_pages=limit_pages
        )
