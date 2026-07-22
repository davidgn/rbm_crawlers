import re
from html_search_spider import HTMLSearchSpider

class Tongcheng58CnSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="58Tongcheng_CN", base_url="https://www.58.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    Tongcheng58CnSpider(limit_pages=1).run()
