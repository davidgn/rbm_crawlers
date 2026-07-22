import re
from html_search_spider import HTMLSearchSpider

class PulgaDoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Pulga_DO", base_url="https://lapulga.com.do",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Dominican Republic", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PulgaDoSpider(limit_pages=1).run()
