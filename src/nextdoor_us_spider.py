import re
from html_search_spider import HTMLSearchSpider

class NextdoorUsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Nextdoor_US", base_url="https://nextdoor.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="United States", limit_pages=limit_pages
        )

if __name__ == "__main__":
    NextdoorUsSpider(limit_pages=1).run()
