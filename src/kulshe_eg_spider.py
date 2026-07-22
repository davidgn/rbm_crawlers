import re
from html_search_spider import HTMLSearchSpider

class KulsheEgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Kulshe_EG", base_url="https://kulshe.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h2.title', 'price': '.price-box'},
            territory="Egypt", limit_pages=limit_pages
        )

if __name__ == "__main__":
    KulsheEgSpider(limit_pages=1).run()
