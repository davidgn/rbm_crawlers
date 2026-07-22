import re
from html_search_spider import HTMLSearchSpider

class DangdangSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Dangdang", price_currency="CNY", base_url="https://search.dangdang.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DangdangSpider(limit_pages=1).run()
