import re
from html_search_spider import HTMLSearchSpider

class BamadaMlSpider(HTMLSearchSpider):
    """Native spider for Bamada (Mali)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bamada_ML", base_url="https://bamada.net",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Mali", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BamadaMlSpider(limit_pages=1).run()
