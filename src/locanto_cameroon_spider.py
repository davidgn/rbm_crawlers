import re
from html_search_spider import HTMLSearchSpider

class LocantoCameroonSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto Cameroon", base_url="https://www.locanto.cm",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Cameroon", limit_pages=limit_pages
        )
