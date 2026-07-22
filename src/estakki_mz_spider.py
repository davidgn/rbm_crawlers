import re
from html_search_spider import HTMLSearchSpider

class EstakkiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Estakki", base_url="https://estakki.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mozambique", limit_pages=limit_pages
        )
