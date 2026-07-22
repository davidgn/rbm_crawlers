import re
from html_search_spider import HTMLSearchSpider

class GasyMgSpider(HTMLSearchSpider):
    """Native spider for Gasy (Madagascar)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Gasy_MG", base_url="https://gasy.net",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Madagascar", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GasyMgSpider(limit_pages=1).run()
