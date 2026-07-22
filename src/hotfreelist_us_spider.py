import re
from html_search_spider import HTMLSearchSpider

class HotFreeListUsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="HotFreeList_US", base_url="https://www.hotfreelist.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'a.title', 'price': '.item-price'},
            territory="United States", limit_pages=limit_pages
        )

if __name__ == "__main__":
    HotFreeListUsSpider(limit_pages=1).run()
