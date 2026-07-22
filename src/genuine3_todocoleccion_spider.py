import re
from html_search_spider import HTMLSearchSpider

class TodocoleccionSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Todocoleccion", base_url="https://www.todocoleccion.net",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Spain", limit_pages=limit_pages
        )

if __name__ == "__main__":
    TodocoleccionSpider(limit_pages=1).run()
