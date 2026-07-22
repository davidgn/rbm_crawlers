import re
from html_search_spider import HTMLSearchSpider

class HardOffSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="HardOff", base_url="https://netmall.hardoff.co.jp",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    HardOffSpider(limit_pages=1).run()
