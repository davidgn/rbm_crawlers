import re
from html_search_spider import HTMLSearchSpider

class CostaricaEncuentra24Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Encuentra24_CR", base_url="https://www.encuentra24.com/costa-rica",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Costa Rica", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CostaricaEncuentra24Spider(limit_pages=1).run()
