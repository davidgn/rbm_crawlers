import re
from html_search_spider import HTMLSearchSpider

class ParaguayLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_PY", base_url="https://paraguay.locanto.com.py",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Paraguay", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ParaguayLocantoSpider(limit_pages=1).run()
