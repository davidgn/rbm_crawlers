import re
from html_search_spider import HTMLSearchSpider

class KerawaCmSpider(HTMLSearchSpider):
    """Native spider for Kerawa (Cameroon)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Kerawa_CM", base_url="https://kerawa.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Cameroon", limit_pages=limit_pages
        )

if __name__ == "__main__":
    KerawaCmSpider(limit_pages=1).run()
