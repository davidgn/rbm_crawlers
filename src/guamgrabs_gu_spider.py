import re
from html_search_spider import HTMLSearchSpider

class GuamGrabsGuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="GuamGrabs_GU", base_url="https://guamgrabs.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Guam", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GuamGrabsGuSpider(limit_pages=1).run()
