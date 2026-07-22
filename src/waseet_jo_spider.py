import re
from html_search_spider import HTMLSearchSpider

class WaseetJoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Waseet_JO", base_url="https://www.waseet.net/jo",
            search_path="search?q={search_term}",
            selectors={'container': 'div.ad-item', 'title': 'h2.ad-title', 'price': 'span.ad-price'},
            territory="Jordan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    WaseetJoSpider(limit_pages=1).run()
