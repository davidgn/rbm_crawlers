import re
from html_search_spider import HTMLSearchSpider

class Classi4uSolomonSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Classi4uSolomon", base_url="https://solomon-islands.classi4u.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Solomon Islands", limit_pages=limit_pages
        )

if __name__ == "__main__":
    Classi4uSolomonSpider(limit_pages=1).run()
