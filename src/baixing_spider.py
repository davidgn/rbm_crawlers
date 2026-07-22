import re
from html_search_spider import HTMLSearchSpider

class BaixingSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Baixing", base_url="https://www.baixing.com",
            search_path="search?query={search_term}",
            selectors={'container': 'div.ad-item', 'title': 'h2.title', 'price': '.price-text'},
            territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BaixingSpider(limit_pages=1).run()
