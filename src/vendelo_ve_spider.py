import re
from html_search_spider import HTMLSearchSpider

class VendeloVeSpider(HTMLSearchSpider):
    """Native spider for Vendelo (Venezuela)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Vendelo_VE", base_url="https://vendelo.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Venezuela", limit_pages=limit_pages
        )

if __name__ == "__main__":
    VendeloVeSpider(limit_pages=1).run()
