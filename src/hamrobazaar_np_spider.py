import re
from html_search_spider import HTMLSearchSpider

class HamrobazaarNpSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Hamrobazaar_NP", base_url="https://hamrobazaar.com",
            search_path="search/product?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Nepal", limit_pages=limit_pages
        )

if __name__ == "__main__":
    HamrobazaarNpSpider(limit_pages=1).run()
