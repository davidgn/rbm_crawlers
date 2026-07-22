import re
from html_search_spider import HTMLSearchSpider

class LuxembourgLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_LU", base_url="https://luxembourg.locanto.lu",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Luxembourg", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LuxembourgLocantoSpider(limit_pages=1).run()
