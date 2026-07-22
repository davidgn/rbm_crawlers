import re
from html_search_spider import HTMLSearchSpider

class BeboRuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BeboRu", base_url="https://bebo.ru",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Russia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BeboRuSpider(limit_pages=1).run()
