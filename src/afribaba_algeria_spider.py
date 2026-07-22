import re
from html_search_spider import HTMLSearchSpider

class AfribabaAlgeriaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba", base_url="https://dz.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Algeria", limit_pages=limit_pages
        )
