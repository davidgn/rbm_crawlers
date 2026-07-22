import re
from html_search_spider import HTMLSearchSpider

class LocantoSudanSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto", base_url="https://sd.locanto.com",
            search_path="q/{search_term}/",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Sudan", limit_pages=limit_pages
        )
