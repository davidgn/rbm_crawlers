import re
from html_search_spider import HTMLSearchSpider

class DominicaClassifiedSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="DominicaClassified", base_url="https://dominicaclassified.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Dominica", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DominicaClassifiedSpider(limit_pages=1).run()
