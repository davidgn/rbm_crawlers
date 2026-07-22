import re
from html_search_spider import HTMLSearchSpider

class Elo7Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Elo7", base_url="https://www.elo7.com.br",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Brazil", limit_pages=limit_pages
        )

if __name__ == "__main__":
    Elo7Spider(limit_pages=1).run()
