import re
from html_search_spider import HTMLSearchSpider

class LocantoVenezuelaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto Venezuela", base_url="https://www.locanto.com.ve",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Venezuela", limit_pages=limit_pages
        )
