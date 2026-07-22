import re
from html_search_spider import HTMLSearchSpider

class ETadySpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="e-tady", base_url="https://www.e-tady.mg",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Madagascar", limit_pages=limit_pages
        )
