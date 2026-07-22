import re
from html_search_spider import HTMLSearchSpider

class HabeshaEtSpider(HTMLSearchSpider):
    """Native spider for Habesha (Ethiopia)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Habesha_ET", base_url="https://habesha.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Ethiopia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    HabeshaEtSpider(limit_pages=1).run()
