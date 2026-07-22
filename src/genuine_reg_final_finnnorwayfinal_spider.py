import re
from html_search_spider import HTMLSearchSpider

class FinnNorwayFinalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="FinnNorwayFinal", base_url="https://www.finn.no",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Norway", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FinnNorwayFinalSpider(limit_pages=1).run()
