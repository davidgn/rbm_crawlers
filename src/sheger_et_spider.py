import re
from html_search_spider import HTMLSearchSpider

class ShegerEtSpider(HTMLSearchSpider):
    """Native spider for Sheger (Ethiopia)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Sheger_ET", base_url="https://sheger.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Ethiopia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ShegerEtSpider(limit_pages=1).run()
