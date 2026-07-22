import re
from html_search_spider import HTMLSearchSpider

class WubaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Wuba", base_url="https://www.58.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    WubaSpider(limit_pages=1).run()
