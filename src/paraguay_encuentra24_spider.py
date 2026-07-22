import re
from html_search_spider import HTMLSearchSpider

class ParaguayEncuentra24Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Encuentra24_PY", base_url="https://www.encuentra24.com/paraguay",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Paraguay", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ParaguayEncuentra24Spider(limit_pages=1).run()
