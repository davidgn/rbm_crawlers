import re
from html_search_spider import HTMLSearchSpider

class KaideeThSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Kaidee_TH", base_url="https://www.kaidee.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Thailand", limit_pages=limit_pages
        )

if __name__ == "__main__":
    KaideeThSpider(limit_pages=1).run()
