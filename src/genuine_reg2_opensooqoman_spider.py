import re
from html_search_spider import HTMLSearchSpider

class OpenSooqOmanSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OpenSooqOman", base_url="https://om.opensooq.com/en",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Oman", limit_pages=limit_pages
        )

if __name__ == "__main__":
    OpenSooqOmanSpider(limit_pages=1).run()
