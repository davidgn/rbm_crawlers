import re
from html_search_spider import HTMLSearchSpider

class AvizoCzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Avizo_CZ", base_url="https://www.avizo.cz",
            search_path="s/{search_term}",
            selectors={'container': 'div.classifiedBox', 'title': 'h2.classifiedTitle', 'price': 'span.classifiedPrice'},
            territory="Czech Republic", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AvizoCzSpider(limit_pages=1).run()
