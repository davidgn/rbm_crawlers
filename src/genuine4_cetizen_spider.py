import re
from html_search_spider import HTMLSearchSpider

class CetizenSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Cetizen", base_url="https://www.cetizen.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="South Korea", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CetizenSpider(limit_pages=1).run()
