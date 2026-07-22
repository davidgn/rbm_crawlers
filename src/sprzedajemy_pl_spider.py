import re
from html_search_spider import HTMLSearchSpider

class SprzedajemyPlSpider(HTMLSearchSpider):
    """Native spider for Sprzedajemy (Poland)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Sprzedajemy_PL", base_url="https://sprzedajemy.pl",
            search_path="szukaj?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Poland", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SprzedajemyPlSpider(limit_pages=1).run()
