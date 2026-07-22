import re
from html_search_spider import HTMLSearchSpider

class OpenSooqIraqSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OpenSooq", base_url="https://iq.opensooq.com",
            search_path="search/?term={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Iraq", limit_pages=limit_pages
        )
