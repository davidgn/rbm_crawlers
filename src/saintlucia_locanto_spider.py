import re
from html_search_spider import HTMLSearchSpider

class SaintluciaLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_LC", base_url="https://saintlucia.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Saint Lucia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SaintluciaLocantoSpider(limit_pages=1).run()
