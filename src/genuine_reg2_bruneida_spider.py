import re
from html_search_spider import HTMLSearchSpider

class BruneidaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bruneida", base_url="https://www.bruneida.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Brunei", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BruneidaSpider(limit_pages=1).run()
