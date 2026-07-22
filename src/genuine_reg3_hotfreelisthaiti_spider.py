import re
from html_search_spider import HTMLSearchSpider

class HotFreeListHaitiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="HotFreeListHaiti", base_url="https://haiti.hotfreelist.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Haiti", limit_pages=limit_pages
        )

if __name__ == "__main__":
    HotFreeListHaitiSpider(limit_pages=1).run()
