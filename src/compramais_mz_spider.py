import re
from html_search_spider import HTMLSearchSpider

class CompraMaisMzSpider(HTMLSearchSpider):
    """Native spider for CompraMais (Mozambique)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CompraMais_MZ", base_url="https://compramais.co.mz",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Mozambique", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CompraMaisMzSpider(limit_pages=1).run()
