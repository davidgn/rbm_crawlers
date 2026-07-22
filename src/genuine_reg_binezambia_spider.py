import re
from html_search_spider import HTMLSearchSpider

class BineZambiaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BineZambia", base_url="https://bine.co.zm",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Zambia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BineZambiaSpider(limit_pages=1).run()
