import re
from html_search_spider import HTMLSearchSpider

class GanjiCnSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Ganji_CN", base_url="https://www.ganji.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GanjiCnSpider(limit_pages=1).run()
