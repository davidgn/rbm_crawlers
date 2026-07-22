import re
from html_search_spider import HTMLSearchSpider

class DelonNgSpider(HTMLSearchSpider):
    """Native spider for Delon (Nigeria)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Delon_NG", base_url="https://delon.ng",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Nigeria", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DelonNgSpider(limit_pages=1).run()
