import re
from html_search_spider import HTMLSearchSpider

class MabumbeTzSpider(HTMLSearchSpider):
    """Native spider for Mabumbe (Tanzania)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Mabumbe_TZ", base_url="https://mabumbe.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Tanzania", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MabumbeTzSpider(limit_pages=1).run()
