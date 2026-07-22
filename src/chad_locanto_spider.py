import re
from html_search_spider import HTMLSearchSpider

class ChadLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_TD", base_url="https://chad.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Chad", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ChadLocantoSpider(limit_pages=1).run()
