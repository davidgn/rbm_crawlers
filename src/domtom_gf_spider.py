import re
from html_search_spider import HTMLSearchSpider

class DomTomGfSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="DomTom_GF", base_url="https://domtomannonces.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="French Guiana", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DomTomGfSpider(limit_pages=1).run()
