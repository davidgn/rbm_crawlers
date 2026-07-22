import re
from html_search_spider import HTMLSearchSpider

class GrenadaLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_GD", base_url="https://grenada.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Grenada", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GrenadaLocantoSpider(limit_pages=1).run()
