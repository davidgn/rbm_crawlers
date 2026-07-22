import re
from html_search_spider import HTMLSearchSpider

class Encuentra24GtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Encuentra24_GT", base_url="https://www.encuentra24.com",
            search_path="guatemala-es/search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Guatemala", limit_pages=limit_pages
        )

if __name__ == "__main__":
    Encuentra24GtSpider(limit_pages=1).run()
