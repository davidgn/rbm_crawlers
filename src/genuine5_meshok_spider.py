import re
from html_search_spider import HTMLSearchSpider

class MeshokSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Meshok", base_url="https://meshok.net",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Russia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MeshokSpider(limit_pages=1).run()
