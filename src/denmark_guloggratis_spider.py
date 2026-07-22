import re
from html_search_spider import HTMLSearchSpider

class DenmarkGuloggratisSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="GulOgGratis_DK", base_url="https://www.guloggratis.dk",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Denmark", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DenmarkGuloggratisSpider(limit_pages=1).run()
