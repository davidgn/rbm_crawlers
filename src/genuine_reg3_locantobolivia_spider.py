import re
from html_search_spider import HTMLSearchSpider

class LocantoBoliviaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LocantoBolivia", base_url="https://www.locanto.com.bo",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Bolivia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LocantoBoliviaSpider(limit_pages=1).run()
