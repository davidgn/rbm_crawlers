import re
from html_search_spider import HTMLSearchSpider

class SouthkoreaLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_KR", base_url="https://southkorea.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="South Korea", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SouthkoreaLocantoSpider(limit_pages=1).run()
