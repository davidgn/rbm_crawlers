import re
from html_search_spider import HTMLSearchSpider

class MmOneMmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MmOne_MM", base_url="https://mmone.com.mm",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'a.title', 'price': '.price-box'},
            territory="Myanmar", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MmOneMmSpider(limit_pages=1).run()
