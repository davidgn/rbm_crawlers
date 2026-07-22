import re
from html_search_spider import HTMLSearchSpider

class SwitzerlandTuttiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Tutti_CH", base_url="https://www.tutti.ch",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Switzerland", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SwitzerlandTuttiSpider(limit_pages=1).run()
