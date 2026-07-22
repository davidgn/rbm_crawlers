import re
from html_search_spider import HTMLSearchSpider

class ClickBdBdSpider(HTMLSearchSpider):
    """Native spider for ClickBD (Bangladesh)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ClickBD_BD", base_url="https://www.clickbd.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Bangladesh", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ClickBdBdSpider(limit_pages=1).run()
