import re
from html_search_spider import HTMLSearchSpider

class CyphomaHaitiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CyphomaHaiti", base_url="https://www.cyphoma.com/ht",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Haiti", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CyphomaHaitiSpider(limit_pages=1).run()
