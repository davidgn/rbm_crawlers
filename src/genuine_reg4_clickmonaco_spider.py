import re
from html_search_spider import HTMLSearchSpider

class ClickMonacoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ClickMonaco", base_url="https://clickmonaco.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Monaco", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ClickMonacoSpider(limit_pages=1).run()
