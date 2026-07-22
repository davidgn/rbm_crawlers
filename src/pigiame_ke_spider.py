import re
from html_search_spider import HTMLSearchSpider

class PigiameKeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Pigiame_KE", base_url="https://www.pigiame.co.ke",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Kenya", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PigiameKeSpider(limit_pages=1).run()
