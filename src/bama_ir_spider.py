import re
from html_search_spider import HTMLSearchSpider

class BamaIrSpider(HTMLSearchSpider):
    """Native spider for Bama (Iran)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bama_IR", base_url="https://bama.ir",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Iran", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BamaIrSpider(limit_pages=1).run()
