import re
from html_search_spider import HTMLSearchSpider

class EvisosVenezuelaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Evisos Venezuela", base_url="https://www.evisos.com.ve",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Venezuela", limit_pages=limit_pages
        )
