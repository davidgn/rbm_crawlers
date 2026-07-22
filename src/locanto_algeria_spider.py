import re
from html_search_spider import HTMLSearchSpider

class LocantoAlgeriaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto", base_url="https://dz.locanto.com",
            search_path="q/{search_term}/",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Algeria", limit_pages=limit_pages
        )
